package com.study.springboot.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.study.springboot.dto.NewsDto;

@Mapper
public interface INewsDao {
	public ArrayList<NewsDto> list(); // 전체 조회
	public NewsDto newsInfo(int news_idx); // 단건 조회
	public ArrayList<NewsDto> titleSearch(String searchWord); // 제목 키워드 조회
	public ArrayList<NewsDto> contentSearch(String searchWord); // 내용 키워드 조회	
}
