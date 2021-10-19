package com.study.springboot.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.study.springboot.dto.JobDto;

@Mapper
public interface IJobDao {
	public ArrayList<JobDto> list();	// 전체 조회
	public JobDto jobInfo(int job_idx); // 단건 조회
	public ArrayList<JobDto> titleSearch(String searchWord);  // 제목 키워드 조회
	public ArrayList<JobDto> contentSearch(String searchWord);  // 내용 키워드 조회
}
