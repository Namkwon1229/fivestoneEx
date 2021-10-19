package com.study.springboot.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.study.springboot.dto.NoticeDto;

@Mapper
public interface INoticeDao {
	public ArrayList<NoticeDto> list(); // 전체 조회
	public NoticeDto noticeInfo(int notice_idx); // 단건 조회
	public ArrayList<NoticeDto> top3List(); // 최근 3건만 조회
	public ArrayList<NoticeDto> titleSearch(String searchWord); // 제목 키워드 조회
	public ArrayList<NoticeDto> contentSearch(String searchWord); // 내용 키워드 조회
}
