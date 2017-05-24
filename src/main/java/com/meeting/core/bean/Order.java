package com.meeting.core.bean;

import java.math.BigDecimal;

/**
 * 订单实体类
 * 数据表：t_order
 * @author 白云飞
 *
 */
public class Order {
	private int id;
	private int orderregisterid;	//关联注册用户ID
	private String orderuname;		//关联注册用户姓名
	private String ordertype;		//订单类型
	private String orderno;			//订单号
	private String orderaccount;	//订单付款帐号
	private String ordertitle;		//订单标题
	private String ordermoney;	//订单金额
	private int orderstatus;		//订单状态(0支付中,1支付成功,-1支付失败)
	private String orderbackmsg;	//订单支付回执消息
	private String orderremark;		//订单附加说明
	private String orderdate;		//订单时间

	private String lwsl;			//论文数量
	private String ryly;			//人员类型
	private String ccys;			//论文超出页数
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getOrderregisterid() {
		return orderregisterid;
	}
	public void setOrderregisterid(int orderregisterid) {
		this.orderregisterid = orderregisterid;
	}
	public String getOrderuname() {
		return orderuname;
	}
	public void setOrderuname(String orderuname) {
		this.orderuname = orderuname;
	}
	public String getOrdertype() {
		return ordertype;
	}
	public void setOrdertype(String ordertype) {
		this.ordertype = ordertype;
	}
	public String getOrderno() {
		return orderno;
	}
	public void setOrderno(String orderno) {
		this.orderno = orderno;
	}
	public String getOrderaccount() {
		return orderaccount;
	}
	public void setOrderaccount(String orderaccount) {
		this.orderaccount = orderaccount;
	}
	public String getOrdertitle() {
		return ordertitle;
	}
	public void setOrdertitle(String ordertitle) {
		this.ordertitle = ordertitle;
	}
	public String getOrdermoney() {
		return ordermoney;
	}
	public void setOrdermoney(String ordermoney) {
		this.ordermoney = ordermoney;
	}
	public int getOrderstatus() {
		return orderstatus;
	}
	public void setOrderstatus(int orderstatus) {
		this.orderstatus = orderstatus;
	}
	public String getOrderbackmsg() {
		return orderbackmsg;
	}
	public void setOrderbackmsg(String orderbackmsg) {
		this.orderbackmsg = orderbackmsg;
	}
	public String getOrderremark() {
		return orderremark;
	}
	public void setOrderremark(String orderremark) {
		this.orderremark = orderremark;
	}
	public String getOrderdate() {
		return orderdate;
	}
	public void setOrderdate(String orderdate) {
		this.orderdate = orderdate;
	}

	public String getLwsl() {
		return lwsl;
	}

	public void setLwsl(String lwsl) {
		this.lwsl = lwsl;
	}

	public String getRyly() {
		return ryly;
	}

	public void setRyly(String ryly) {
		this.ryly = ryly;
	}

	public String getCcys() {
		return ccys;
	}

	public void setCcys(String ccys) {
		this.ccys = ccys;
	}

	public Order() {
		super();
	}
}
