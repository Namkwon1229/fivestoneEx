package com.study.springboot.dto;

import java.util.Date;

public class One2OneDto {
	
	private int    one2one_idx;
	private String one2one_name;
	private String one2one_phone;
	private String one2one_email;
	private String one2one_address;
	private String one2one_title;
	private String one2one_content;
	private Date   one2one_date;
	
	public One2OneDto() {
		super();
	}
	
	public One2OneDto(int one2one_idx, String one2one_name, String one2one_phone, 
					  String one2one_email, String one2one_address, String one2one_title, 
					  String one2one_content, Date one2one_date) {
		
		super();
		this.one2one_idx 	 = one2one_idx;
		this.one2one_name    = one2one_name;
		this.one2one_phone   = one2one_phone;
		this.one2one_email   = one2one_email;
		this.one2one_address = one2one_address;
		this.one2one_title   = one2one_title;
		this.one2one_content = one2one_content;
		this.one2one_date    = one2one_date;
		
	}

	public int getOne2one_idx() {
		return one2one_idx;
	}

	public void setOne2one_idx(int one2one_idx) {
		this.one2one_idx = one2one_idx;
	}

	public String getOne2one_name() {
		return one2one_name;
	}

	public void setOne2one_name(String one2one_name) {
		this.one2one_name = one2one_name;
	}

	public String getOne2one_phone() {
		return one2one_phone;
	}

	public void setOne2one_phone(String one2one_phone) {
		this.one2one_phone = one2one_phone;
	}

	public String getOne2one_email() {
		return one2one_email;
	}

	public void setOne2one_email(String one2one_email) {
		this.one2one_email = one2one_email;
	}

	public String getOne2one_address() {
		return one2one_address;
	}

	public void setOne2one_address(String one2one_address) {
		this.one2one_address = one2one_address;
	}

	public String getOne2one_title() {
		return one2one_title;
	}

	public void setOne2one_title(String one2one_title) {
		this.one2one_title = one2one_title;
	}

	public String getOne2one_content() {
		return one2one_content;
	}

	public void setOne2one_content(String one2one_content) {
		this.one2one_content = one2one_content;
	}

	public Date getOne2one_date() {
		return one2one_date;
	}

	public void setOne2one_date(Date one2one_date) {
		this.one2one_date = one2one_date;
	}
	
}
