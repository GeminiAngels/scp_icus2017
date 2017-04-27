package com.meeting.core.bean;

import java.util.Date;

/**
 * 2016/9/13 01:36:34
 * @author 白云飞
 *
 */
public class Register {
	private int id;				//编号
	private String username;	//用户名
	private String password;	//密码
	private String registertime;//注册时间
	private String nickname;	//姓名
	private String sex;			//性别
	private String company;		//工作单位
	private String title;		//职称
	private String job;			//职务
	private String telphone;	//手机
	private String email;		//邮箱
	private String journalname;	//投稿期刊
	private String message;		//备注

	private String sfbg;		//是否报告
	private String sfkc;		//sfkc
	private String sfzs;		//是否住宿

//	private String address;		//单位地址
//	private String postcode;	//邮编
//	private String officephone;	//办公电话
//	private String fax;			//传真
//	private String gzqk;		//工作情况
//	private String sffblw;		//是否发表论文
//	private String gjbh;		//稿件编号
//	private String gjtm;		//稿件题目
//	private String gjzt;		//稿件状态
//	private String sfztlw;		//是否张贴论文
//	private String sfsqhyfy;	//是否申请会议发言
//	private String fytm;		//发言题目
//	private String fynrzy;		//发言内容摘要
//	private String sfzs;		//是否住宿
//	private String zsyq;		//住宿标准
//	private String zskssj;		//住宿开始时间
//	private String zsjssj;		//住宿结束时间
//	private String invoice;		//是否需要发票
//	private String zfflag;		//缴费状态
//	private String fptt;		//发票抬头（单位名称）
//	private String yqhfszt;		//电子邀请函发送状态

	
//	private String degree;		//学历-作废
//	private String sfcjsx;		//是否参加实习-作废
//	private String sxxl;		//实习线路-作废
//	private String usertype;	//代表性质

	
	public Register() {
		super();
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getRegistertime() {
		return registertime;
	}

	public void setRegistertime(String registertime) {
		this.registertime = registertime;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getCompany() {
		return company;
	}

	public void setCompany(String company) {
		this.company = company;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getJob() {
		return job;
	}

	public void setJob(String job) {
		this.job = job;
	}

	public String getTelphone() {
		return telphone;
	}

	public void setTelphone(String telphone) {
		this.telphone = telphone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getJournalname() {
		return journalname;
	}

	public void setJournalname(String journalname) {
		this.journalname = journalname;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public String getSfbg() {
		return sfbg;
	}

	public void setSfbg(String sfbg) {
		this.sfbg = sfbg;
	}

	public String getSfkc() {
		return sfkc;
	}

	public void setSfkc(String sfkc) {
		this.sfkc = sfkc;
	}

	public String getSfzs() {
		return sfzs;
	}

	public void setSfzs(String sfzs) {
		this.sfzs = sfzs;
	}
}
