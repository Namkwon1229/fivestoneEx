package com.study.springboot.dto;

import java.util.Date;

public class NoticeDto {
	
	private int    notice_idx;
	private String notice_title;
	private String notice_content;
	private String notice_member_id;
	private Date   notice_date;
	
	public NoticeDto() {
		super();
	}
	
	public NoticeDto(int notice_idx, String notice_title, String notice_content, 
					 String notice_member_id, Date notice_date) {
		
		super();
		this.notice_idx 	  = notice_idx;
		this.notice_title     = notice_title;
		this.notice_content   = notice_content;
		this.notice_member_id = notice_member_id;
		this.notice_date      = notice_date;
		
	}

	public int getNotice_idx() {
		return notice_idx;
	}

	public void setNotice_idx(int notice_idx) {
		this.notice_idx = notice_idx;
	}

	public String getNotice_title() {
		return notice_title;
	}

	public void setNotice_title(String notice_title) {
		this.notice_title = notice_title;
	}

	public String getNotice_content() {
		return notice_content;
	}

	public void setNotice_content(String notice_content) {
		this.notice_content = notice_content;
	}

	public String getNotice_member_id() {
		return notice_member_id;
	}

	public void setNotice_member_id(String notice_member_id) {
		this.notice_member_id = notice_member_id;
	}

	public Date getNotice_date() {
		return notice_date;
	}

	public void setNotice_date(Date notice_date) {
		this.notice_date = notice_date;
	}
		
}
