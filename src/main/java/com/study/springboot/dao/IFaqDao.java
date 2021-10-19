package com.study.springboot.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.study.springboot.dto.FaqDto;

//MyBasic와 객체를 연결하는 어노테이션.
@Mapper
public interface IFaqDao {
	public ArrayList<FaqDto> list();	// 전체 조회
	public FaqDto faqInfo(int faq_idx); // 단건 조회
	public ArrayList<FaqDto> titleSearch(String faqSearchWord); // 제목 키워드 조회
	public ArrayList<FaqDto> contentSearch(String faqSearchWord); // 내용 키워드 조회
}