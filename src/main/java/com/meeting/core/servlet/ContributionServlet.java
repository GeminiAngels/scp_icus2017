package com.meeting.core.servlet;

import com.meeting.core.bean.Contribution;
import com.meeting.core.bean.Resources;
import com.meeting.core.bean.Thesis;
import com.meeting.core.service.ContributionService;
import com.meeting.core.service.ResourceService;
import com.meeting.core.service.ThesisService;
import com.meeting.core.util.StringUtil;
import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.log4j.Logger;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.InputStream;
import java.io.OutputStream;
import java.sql.Blob;
import java.util.*;

/**
 * 2016/9/13 01:40:53
 * @author 白云飞
 *
 */
public class ContributionServlet extends BaseServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@SuppressWarnings("unused")
	private final Logger logger = Logger.getLogger(this.getClass());

    public String saveAndSubmit(HttpServletRequest req , HttpServletResponse resp){
        return this.save(req,resp);
    }
	
	public String save(HttpServletRequest req , HttpServletResponse resp){
        // TODO: 2017-04-27  未完待续
        DiskFileItemFactory factory = new DiskFileItemFactory();
        System.out.println(getServletContext().getRealPath("/upload/"));
        String path = getServletContext().getRealPath("/upload/");//设置磁盘缓冲路径
	
		factory.setRepository(new File(path));
		factory.setSizeThreshold(4096);//设置创建缓冲大小
		
		ServletFileUpload upload = new ServletFileUpload(factory);
		upload.setSizeMax(-1);//设置上传文件限制大小,-1无上限
		try {
            req.setCharacterEncoding("UTF-8");
			List<FileItem> list = upload.parseRequest(req);
            Contribution cont = new Contribution();
            List<Thesis> thesisList = new ArrayList<Thesis>();
            Map contMap = new HashMap();
			for(FileItem item : list){
		//		String name = item.getFieldName();
				if(item.isFormField()){//判断是否是文件流
                    contMap.put(item.getFieldName(),item.getString("UTF-8"));
				}else{
				    if(StringUtil.isEmpty(item.getName()))
				        continue;
                    String comments = "",category = "1",realFileName = "",type = "";
					String value = item.getName();//会将完整路径名传过来
                    String fieldName = item.getFieldName();
                    if("file1".equals(fieldName))
                        category = "1";
                    else if("file2".equals(fieldName))
                        category = "2";
                    else if("file3".equals(fieldName))
                        category = "3";
					int start = value.lastIndexOf("\\");
					String fileName = value.substring(start+1);
			//		request.setAttribute(name, fileName);
					//item.write(new File("C:\\Program Files\\meeting\\files",fileName));//写数据库和写磁盘只能选一种
					int index = fileName.lastIndexOf(".");
					realFileName = fileName.substring(0,index);
					type = fileName.substring(index+1);

                    //对上传文件类型进行限制
                    if(!"docx".equals(type)
                            &&!"doc".equals(type)
                            &&!"txt".equals(type)
                            &&!"zip".equals(type)
                            &&!"pdf".equals(type)) {
                        req.setAttribute("fileerror","The file type does not meet the requirements");
                        return "ctx:Submission/index.jsp";
                    }

                    Thesis thesis = new Thesis();
                    thesis.setFilename(realFileName);
                    thesis.setType(type);
                    thesis.setComments(comments);
                    thesis.setUploadtime(new Date());
                    thesis.setCategory(category);
                    thesis.setFile(item.getInputStream());
                    thesisList.add(thesis);
				}
			}

            ContributionService contributionService = new ContributionService();
            ThesisService thesisService = new ThesisService();
            BeanUtils.populate(cont,contMap);
            if(cont.getId()==0){
                contributionService.insert(cont);
            } else {
                contributionService.update(cont);
            }

            // 保证只有一个附件
            thesisService.deleteBy(cont.getId()+"");

            for(Thesis thesis : thesisList) {
            	thesis.setRegisterid(cont.getRegisterid());
				if(cont.getId()!=0)
					thesis.setContid(cont.getId()+"");
                thesisService.insert(thesis);
            }

            List _list = thesisService.list(cont.getRegisterid());

            req.getSession().setAttribute("contribution",cont);
			req.getSession().setAttribute("thesisList",_list);
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		req.setAttribute("success",true);
        req.setAttribute("msg","success");
		return "ctx:Submission/index.jsp";
	}
	
	public String download(HttpServletRequest req , HttpServletResponse resp){
		String fileid = req.getParameter("fileid");
		ThesisService service = new ThesisService();
		InputStream in = null;
		OutputStream out = null;
		Map file = null;
		try {
			file = service.get(fileid);
			in = ((Blob)file.get("file")).getBinaryStream();
			out = resp.getOutputStream();
			resp.setContentType("application/x-msdownload");
			String filename = file.get("filename")+"."+file.get("type");
			filename = new String(filename.getBytes("utf-8"),"ISO-8859-1");
			resp.addHeader("Content-Disposition", "attachment; filename="+filename);
			resp.setCharacterEncoding("UTF-8");
			int b = -1;
			while((b=in.read())!=-1){
				out.write(b);
			}
			in.close();
			out.close();
			in = null;
			out = null;
			file = null;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	public String delete(HttpServletRequest req , HttpServletResponse resp){
		String fileid = req.getParameter("fileid");
		ThesisService service = new ThesisService();
		service.delete(fileid);
		Map register = (Map)req.getSession().getAttribute("register");
		if(register!=null)
			req.getSession().setAttribute("thesisList",service.list(register.get("id").toString()));
		else {
			req.getSession().removeAttribute("register");
			req.getSession().removeAttribute("contribution");
			req.getSession().removeAttribute("thesisList");
			req.getSession().invalidate();
		}
		return "ctx:Submission/index.jsp";
	}
}
