package com.meeting.core.bean;

import java.io.InputStream;
import java.util.Date;

/**
 * 文件表-比如论文
 * @author 白云飞
 *
 */
public class Thesis {
	private int id;
	private String registerid;
	private String contid;
	private String registeremail;
	private Date uploadtime;
	private String filename;
	private String type;
	private int status;
	private String category;
	private String comments;
	private InputStream file;

	public Thesis() {
	}

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getRegisterid() {
		return registerid;
	}
	public void setRegisterid(String registerid) {
		this.registerid = registerid;
	}

	public String getContid() {
		return contid;
	}

	public void setContid(String contid) {
		this.contid = contid;
	}

	public String getRegisteremail() {
		return registeremail;
	}
	public void setRegisteremail(String registeremail) {
		this.registeremail = registeremail;
	}
	public Date getUploadtime() {
		return uploadtime;
	}
	public void setUploadtime(Date uploadtime) {
		this.uploadtime = uploadtime;
	}
	public String getFilename() {
		return filename;
	}
	public void setFilename(String filename) {
		this.filename = filename;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getComments() {
		return comments;
	}
	public void setComments(String comments) {
		this.comments = comments;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}

	public InputStream getFile() {
		return file;
	}

	public void setFile(InputStream file) {
		this.file = file;
	}

	@Override
	public String toString() {
		return "Thesis{" +
				"id=" + id +
				", contid='" + contid + '\'' +
				", registerid='" + registerid + '\'' +
				", registeremail='" + registeremail + '\'' +
				", uploadtime=" + uploadtime +
				", filename='" + filename + '\'' +
				", type='" + type + '\'' +
				", status=" + status +
				", category='" + category + '\'' +
				", comments='" + comments + '\'' +
				'}';
	}
}
