package com.study.springboot.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.study.springboot.dto.QnaDto;

@Mapper
public interface IQnaDao {
	public ArrayList<QnaDto> list(); // 전체 조회
	public QnaDto qnaInfo(int qna_idx); // 단건 조회
	public int qnaPwCheck(int qna_idx, String qna_pw); // 글 비밀번호 확인
	public int qnaDelete(int qna_idx); // 글 삭제
	public int qnaAdd(String qna_name, String qna_pw, String qna_title, String qna_content); // 글 추가
	public int qnaModify(int qna_idx, String qna_name, String qna_pw, String qna_title, String qna_content); // 글 수정
	public ArrayList<QnaDto> titleSearch(String searchWord);   // 제목 키워드 조회
	public ArrayList<QnaDto> contentSearch(String searchWord); // 내용 키워드 조회
	public ArrayList<QnaDto> nameSearch(String searchWord);    // 작성자 키워드 조회
}
