package com.meeting.core.service;

import com.meeting.core.bean.Contribution;
import com.meeting.core.bean.Resources;
import com.meeting.core.db.DBUtil;
import com.meeting.core.util.StringUtil;

import java.io.InputStream;
import java.sql.SQLException;
import java.util.Date;
import java.util.List;
import java.util.Map;

import static java.lang.System.in;

/**
 * 2016/9/14 22:14:29
 * @author 白云飞
 *
 */
public class ContributionService {

	private DBUtil db;

	public ContributionService() {
		db = new DBUtil();
	}

	public Contribution insert(Contribution cont){
		String sql = "INSERT INTO t_contribution (registerid , lm, wt, ywwt, author, jsx, language, gjc, ywgjc, zy, ywzy, xkflh, yjly, gjlx, czlx, zzqwkcsj, ly, supportinfo) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
		boolean success = db.execute(sql, new Object[]{cont.getRegisterid(),cont.getLm(),cont.getWt(),cont.getYwwt(),cont.getAuthor(),cont.getJsx(),cont.getLanguage(),cont.getGjc(),cont.getYwgjc(),cont.getZy(),cont.getYwzy(),cont.getXkflh(),cont.getYjly(),cont.getGjlx(),cont.getCzlx(),new Date(),cont.getLy(),cont.getSupportinfo()});
        if(success) {
            Map m = this.getByRegId(cont.getRegisterid());
            if(m!=null&&m.get("id")!=null)
                cont.setId(Integer.parseInt(m.get("id").toString()));
        }
        return cont;
	}
	
	public Contribution update(Contribution cont){
	    String sql = "UPDATE t_contribution SET lm=?, wt=?, ywwt=?, author=?, jsx=?, language=?, gjc=?, ywgjc=?, zy=?, ywzy=?, xkflh=?, yjly=?, gjlx=?, czlx=?,ly=?, supportinfo=? WHERE (id=?)";
	    boolean success =  db.execute(sql,new Object[]{cont.getLm(),cont.getWt(),cont.getYwwt(),cont.getAuthor(),cont.getJsx(),cont.getLanguage(),cont.getGjc(),cont.getYwgjc(),cont.getZy(),cont.getYwzy(),cont.getXkflh(),cont.getYjly(),cont.getGjlx(),cont.getCzlx(),cont.getLy(),cont.getSupportinfo(),cont.getId()});
        // TODO: 2017-04-27  执行结果通知有待处理
        return cont;
	}
	
	public boolean delete(String id){
		return db.execute("delete from t_contribution where id = ?", new Object[]{id});
	}
	
	/**
	 * 管理端查询所有稿件
	 * @return
	 */
	public List list(){
		StringBuffer sql = new StringBuffer("select date_format(zzqwkcsj,'%Y/%m/%d %H:%i') as _zzqwkcsj , t.* from t_contribution t ");
		sql.append(" where 1=1 ");
		sql.append(" order by id ");
		return db.queryForList(sql.toString());
	}

    /**
     * 用户端查询个人稿件
     * @return
     */
    public Map getByRegId(String regid){
        StringBuffer sql = new StringBuffer("select date_format(zzqwkcsj,'%Y/%m/%d %H:%i') as _zzqwkcsj , t.* from t_contribution t ");
        sql.append(" where 1=1 ");
        if(StringUtil.isNotEmpty(regid)) {
            sql.append(" and registerid = ? ");
        }
        return db.queryOne(sql.toString(),new Object[]{regid});
    }
	
	/**
	 * 更新资料启停状态
	 * @param id
	 * @param status
	 * @return
	 */
	public boolean updateStatus(int id,int status){
		String sql = "update t_contribution set status=? where id=?";
		return db.execute(sql, new Object[]{status,id});
	}

	public Map get(String id) throws SQLException {
		String sql = "select * from t_contribution where id = ?";
		return db.queryOne(sql,new Object[]{id});
	}
}
