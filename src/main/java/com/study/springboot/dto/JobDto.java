package com.study.springboot.dto;

import java.util.Date;

public class JobDto {
	
	private int    job_idx;
	private String job_title;
	private String job_content;
	private String job_member_id;
	private Date   job_date;
	
	public JobDto() {
		super();
	}
	
	public JobDto(int job_idx, String job_title, String job_content,
					String job_member_id, Date job_date) {
		
		super();
		this.job_idx 	   = job_idx;
		this.job_title 	   = job_title;
		this.job_content   = job_content;
		this.job_member_id = job_member_id;
		this.job_date 	   = job_date;
		
	}

	public int getJob_idx() {
		return job_idx;
	}

	public void setJob_idx(int job_idx) {
		this.job_idx = job_idx;
	}

	public String getJob_title() {
		return job_title;
	}

	public void setJob_title(String job_title) {
		this.job_title = job_title;
	}

	public String getJob_content() {
		return job_content;
	}

	public void setJob_content(String job_content) {
		this.job_content = job_content;
	}

	public String getJob_member_id() {
		return job_member_id;
	}

	public void setJob_member_id(String job_member_id) {
		this.job_member_id = job_member_id;
	}

	public Date getJob_date() {
		return job_date;
	}

	public void setJob_date(Date job_date) {
		this.job_date = job_date;
	}
	
}
