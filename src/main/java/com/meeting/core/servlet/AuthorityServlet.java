package com.meeting.core.servlet;

import java.io.InputStream;
import java.io.OutputStream;
import java.sql.Blob;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.meeting.core.bean.Contribution;
import com.meeting.core.bean.Order;
import com.meeting.core.bean.Register;
import com.meeting.core.db.DBUtil;
import com.meeting.core.service.*;

/**
 * 2016/9/13 00:39:21
 * @author 白云飞
 *
 */
public class AuthorityServlet extends BaseServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	public String index(HttpServletRequest req , HttpServletResponse resp){
		return "index.jsp";
	}
	
	
	/**
	 * 登录
	 * @param req
	 * @param resp
	 * @return
	 */
	@SuppressWarnings({ "rawtypes", "unchecked" })
	public String login(HttpServletRequest req , HttpServletResponse resp){
		AuthorityService service = new AuthorityService();
		String username = req.getParameter("username");
		String password = req.getParameter("password");
		Map user = service.getUser(username, password);
		if(user!=null){
			req.getSession().setAttribute("user", user);
			List<Map<String,Object>> userFuncs = service.getUserFuncs(user.get("id").toString());
			if(userFuncs==null||userFuncs.size()==0){
				req.setAttribute("errormsg", "对不起，该用户无权访问系统，请联系管理员予以授权！");
				return "login.jsp";
			}
			Set<String> userUrls = new HashSet<String>();
			for(Map<String,Object> uf : userFuncs){
				if(uf.get("url")!=null)
					userUrls.add(uf.get("url").toString());
			}
			req.getSession().setAttribute("auths", userUrls);
			return "redirect:report.do?method=report";
		} else {
			req.setAttribute("errormsg", "对不起，用户不存在！");
			return "login.jsp";
		}
	}
	
	/**
	 * 退出
	 * @param req
	 * @param resp
	 * @return
	 */
	public String logout(HttpServletRequest req , HttpServletResponse resp){
		req.getSession().invalidate();
		return "login.jsp";
	}
	
	/**
	 * 没有权限时跳转的页面
	 * @param req
	 * @param resp
	 * @return
	 */
	public String noauth(HttpServletRequest req , HttpServletResponse resp){
		return "noauth.jsp";
	}
	
	/**
	 * 跳转到用户管理页
	 * @param req
	 * @param resp
	 * @return
	 */
	public String user(HttpServletRequest req , HttpServletResponse resp){
		return "sysset/user.jsp";
	}
	
	/**
	 * 跳转到角色管理页
	 * @param req
	 * @param resp
	 * @return
	 */
	public String role(HttpServletRequest req , HttpServletResponse resp){
		return "sysset/role.jsp";
	}
	
	/**
	 * 跳转到模块管理页
	 * @param req
	 * @param resp
	 * @return
	 */
	public String func(HttpServletRequest req , HttpServletResponse resp){
		return "sysset/func.jsp";
	}
	
	/**
	 * 跳转到修改密码页
	 * @param req
	 * @param resp
	 * @return
	 */
	public String pwd(HttpServletRequest req , HttpServletResponse resp){
		return "sysset/pwd.jsp";
	}
	
	/**
	 * 跳转到会员管理页
	 * @param req
	 * @param resp
	 * @return
	 */
	public String register(HttpServletRequest req , HttpServletResponse resp){
		return "sysset/register.jsp";
	}
	
	/**
	 * 跳转到订单管理页
	 * @param req
	 * @param resp
	 * @return
	 */
	public String order(HttpServletRequest req , HttpServletResponse resp){
		return "sysset/order.jsp";
	}
	
	/**
	 * 跳转到订单管理(BC)
	 * @param req
	 * @param resp
	 * @return
	 */
	public String bcorder(HttpServletRequest req , HttpServletResponse resp){
		return "sysset/bcorder.jsp";
	}
	/**
	 * 跳转到邮件管理
	 * @param req
	 * @param resp
	 * @return
	 */
	public String email(HttpServletRequest req , HttpServletResponse resp){
		return "sysset/email.jsp";
	}
	
	/**
	 * 跳转到通知管理
	 * @param req
	 * @param resp
	 * @return
	 */
	public String notice(HttpServletRequest req , HttpServletResponse resp){
		return "sysset/notice.jsp";
	}
	/**
	 * 跳转到邮箱设置
	 * @param req
	 * @param resp
	 * @return
	 */
	public String mailSet(HttpServletRequest req , HttpServletResponse resp){
		return "sysset/mailSet.jsp";
	}

	/**
	 * 跳转到后台资料管理
	 * @param req
	 * @param resp
	 * @return
	 */
	public String resource(HttpServletRequest req , HttpServletResponse resp){
		return "sysset/resource.jsp";
	}
	
	/**
	 * 跳转到后台工作人员签到模块
	 * @param req
	 * @param resp
	 * @return
	 */
	public String signin(HttpServletRequest req , HttpServletResponse resp){
		return "sysset/signin.jsp";
	}

	/**
	 * 前台会员登录
	 * @param req
	 * @param resp
	 * @return
	 */
	@SuppressWarnings({ "rawtypes", "unchecked" })
	public String frontLogin(HttpServletRequest req , HttpServletResponse resp){
		RegisterService service = new RegisterService();
		DBUtil db = new DBUtil();
		Map register = null;
		String id = req.getParameter("id");
		if(id!=null){
			register = service.getRegisterById(id);
			req.getSession().setAttribute("position", "#testimonials");
		} else {
			String email = req.getParameter("email");
			String password = req.getParameter("password");
			if(email!=null&&password!=null)
				register = service.getRegister(email, password);
			else
				register = (Map)req.getSession().getAttribute("register");
		}
		if(register!=null){
			ThesisService thesisService = new ThesisService();
			ContributionService contService = new ContributionService();
			Map cont = contService.getByRegId(register.get("id").toString());
			List _list = thesisService.list(register.get("id").toString());
			req.getSession().setAttribute("register", register);
			req.getSession().setAttribute("contribution",cont);
			req.getSession().setAttribute("thesisList",_list);
			req.getSession().setAttribute("orderList", db.queryForList("select * from t_order where orderregisterid = ? ",new Object[]{register.get("id")}));
		} else {
			req.getSession().removeAttribute("register");
			req.getSession().removeAttribute("contribution");
			req.getSession().removeAttribute("thesisList");
			req.getSession().removeAttribute("orderList");
			req.setAttribute("errormsg", "对不起，用户不存在，或被管理员禁用！");
			return "ctx:login.jsp";
		}
		return "ctx:index.jsp";
	}

	/**
	 * 前台会员退出
	 * @param req
	 * @param resp
	 * @return
	 */
	public String frontLogout(HttpServletRequest req , HttpServletResponse resp){
		req.getSession().removeAttribute("register");
		req.getSession().removeAttribute("contribution");
		req.getSession().removeAttribute("thesisList");
		req.getSession().removeAttribute("position");
//		req.getSession().invalidate();
		return "ctx:index.jsp";
	}

	/**
	 * 论文下载
	 * @param req
	 * @param resp
	 * @return
	 */
	public String download(HttpServletRequest req , HttpServletResponse resp){
		String fileid = req.getParameter("fileid");
		RegisterService service = new RegisterService();
		InputStream in = null;
		OutputStream out = null;
		Map file = null;
		try {
			file = service.getThesis(fileid);
			if(file==null){
				req.getSession().removeAttribute("lunwen");
				return "redirect:index.jsp?nofile=true";
			}
			in = ((Blob)file.get("file")).getBinaryStream();
			out = resp.getOutputStream();
			resp.setContentType("application/octet-stream");
			String filename = file.get("filename")+"."+file.get("type");
			filename = new String(filename.getBytes("utf-8"),"ISO-8859-1");
			resp.addHeader("Content-Disposition", "attachment; filename="+filename);
			resp.setCharacterEncoding("UTF-8");
			int b = -1;
			while((b=in.read())!=-1){
				out.write(b);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public String forgotPwd(HttpServletRequest req , HttpServletResponse resp){
		RegisterService service = new RegisterService();
		String email = req.getParameter("email");
		if(service.sendEmailToRegister(email)){
			req.setAttribute("resetPwdEmail", email);
			return "ctx:forgotPwdSuccess.jsp";
		} else {
			req.setAttribute("errormsg", "<b style='color:red;'>对不起，该邮箱注册用户不存在！</b><br/>");
			return "ctx:forgotPwd.jsp";
		}
	}
	
	public String resetPwd(HttpServletRequest req , HttpServletResponse resp){
		String registerid = req.getParameter("regid");
		RegisterService service = new RegisterService();
		Map register = service.getRegisterById(registerid);
		req.setAttribute("regid", registerid);
		req.setAttribute("regemail", register.get("email").toString());
		return "ctx:resetPwd.jsp";
	}
	
	public String resetPwdOK(HttpServletRequest req , HttpServletResponse resp){
		String regid = req.getParameter("regid");
		String regpwd = req.getParameter("regpwd");
		
		RegisterService service = new RegisterService();
		if(service.updateRegisterPwd(regid,regpwd))
			return "ctx:resetPwdSuccess.jsp";
		else {
			req.setAttribute("errormsg", "修改密码失败！");
			return "ctx:resetPwd.jsp";
		}
	}

	public String payment(HttpServletRequest req , HttpServletResponse resp){
		String zffs = req.getParameter("zffs");//支付方式
		try {
			String lwsl = req.getParameter("lwsl");//论文数量
			String rylx = req.getParameter("rylx");//人员类型
			String ccys = req.getParameter("ccys");//超出页数
			String ordermoney = req.getParameter("price");//支付金额
			String remarks = req.getParameter("remarks");

			Map reg = (Map)req.getSession().getAttribute("register");
			int registerid = Integer.parseInt(reg.get("id").toString());

			OrderService orderService = new OrderService();
			Order order = new Order();
			order.setLwsl(lwsl);
			order.setRyly(rylx);
			order.setCcys(ccys);
			order.setOrdertype(zffs);
			order.setOrderregisterid(registerid);
			order.setOrderuname(reg.get("nickname").toString());
			order.setOrdermoney(ordermoney);
			order.setOrderremark(remarks);

			req.setAttribute("data",orderService.addOrderAndPay(order,req));
		} catch (Exception e) {
			e.printStackTrace();
			req.setAttribute("errormsg","System buzy!!!");
			return "ctx:payment.jsp";
		}

		if("PayPal".equals(zffs)) {
			req.setAttribute("payurl","http://localhost:8000/paypalPay");
		} else if("UnionPay".equals(zffs)) {
			req.setAttribute("payurl","http://localhost:8000/unionPay");
		} else if("Alipay".equals(zffs)) {
			req.setAttribute("payurl","http://localhost:8000/alipay");
		} else if("WeChat Pay".equals(zffs)) {
			req.setAttribute("payurl","http://localhost:8000/wxPay");
		}
		return "ctx:payment.jsp";
	}
}
