package com.study.springboot.dto;

import java.util.Date;

public class NewsDto {
	
	private int    news_idx;
	private String news_title;
	private String news_content;
	private String news_member_id;
	private Date   news_date;
	
	public NewsDto() {
		super();
	}
	
	public NewsDto(int news_idx, String news_title, String news_content, 
				   String news_member_id, Date news_date) {
		
		super();
		this.news_idx 		= news_idx;
		this.news_title 	= news_title;
		this.news_content 	= news_content;
		this.news_member_id = news_member_id;
		this.news_date 		= news_date;
		
	}

	public int getNews_idx() {
		return news_idx;
	}

	public void setNews_idx(int news_idx) {
		this.news_idx = news_idx;
	}

	public String getNews_title() {
		return news_title;
	}

	public void setNews_title(String news_title) {
		this.news_title = news_title;
	}

	public String getNews_content() {
		return news_content;
	}

	public void setNews_content(String news_content) {
		this.news_content = news_content;
	}

	public String getNews_member_id() {
		return news_member_id;
	}

	public void setNews_member_id(String news_member_id) {
		this.news_member_id = news_member_id;
	}

	public Date getNews_date() {
		return news_date;
	}

	public void setNews_date(Date news_date) {
		this.news_date = news_date;
	}
	
}
