package com.meeting.core.service;

import com.meeting.core.bean.Thesis;
import com.meeting.core.db.DBUtil;
import com.meeting.core.util.StringUtil;

import java.io.InputStream;
import java.sql.SQLException;
import java.util.Date;
import java.util.List;
import java.util.Map;

import static java.lang.System.in;

/**
 * 2017/4/27 06:14:29
 * @author 白云飞
 *
 */
public class ThesisService {

	private DBUtil db;

	public ThesisService() {
		db = new DBUtil();
	}

	public boolean insert(Thesis thesis){
		String sql = "insert into t_thesis(file,registerid,registeremail,contid,uploadtime,filename,type,category,comments) values(?,?,?,?,?,?,?,?,?) ";
		return db.execute_upload(sql, thesis.getFile(), new Object[]{thesis.getRegisterid(),thesis.getRegisteremail(),thesis.getContid(),new Date(),thesis.getFilename(),thesis.getType(),thesis.getCategory(),thesis.getComments()});
	}
	
	public boolean update(Thesis thesis , InputStream in){
		String sql = "update t_thesis set file = ? , filename = ? , type = ? , category = ? , comments = ? , status = ? where id = ? ";
		return db.execute_upload(sql, in, new Object[]{thesis.getFilename(),thesis.getType(),thesis.getCategory(),thesis.getComments(),thesis.getStatus(),thesis.getId()});
	}
	
	public boolean delete(String id){
		return db.execute("delete from t_thesis where id = ?", new Object[]{id});
	}

	/**
	 * 查询所有上传稿件
	 * @return
	 */
	public List list(){
		return list(null,null);
	}
	
	/**
	 * 查询用户所有上传稿件
	 * @return
	 */
	public List list(String regid){
		return list(regid,null);
	}
	
	public List list(String regid , String category){
		StringBuffer sql = new StringBuffer("select id,registerid,registeremail,contid,filename,type,date_format(uploadtime,'%Y/%m/%d %H:%i') as uploadtime, status , category , comments from t_thesis ");
		sql.append(" where 1=1 ");
		if(StringUtil.isNotEmpty(regid))
			sql.append(" and registerid = ? ");
		if(category!=null){

			sql.append(" and category = ? ");
		}

		sql.append(" order by uploadtime ");
		return db.queryForList(sql.toString(),new Object[]{regid, category});
	}
	
	/**
	 * 更新资料启停状态
	 * @param fileid
	 * @param status
	 * @return
	 */
	public boolean updateStatus(int fileid,int status){
		String sql = "update t_thesis set status=? where id=?";
		return db.execute(sql, new Object[]{status,fileid});
	}

	public Map get(String fileid) throws SQLException {
		String sql = "select file,id,registerid,registeremail,contid,uploadtime,filename,type,category,comments from t_thesis where id = ?";
		return db.queryBlob(sql,new Object[]{fileid});
	}

}