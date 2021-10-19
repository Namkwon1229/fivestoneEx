package com.study.springboot.dao;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface IMemberDao {
	public int memberCheck(String member_id, String member_pw);	// 로그인
	public int checkJoinInfo(String member_name, String member_email); // 기존 회원 여부 체크
	public int idCheck(String member_id); // ID 중복 체크
	public int idEmailCheck(String member_id, String member_email); // ID & EMAIL 중복 체크
	public int addMember(String member_id, String member_pw, String member_name, String member_email, 
						  int member_email_receive, int member_pw_question, String member_pw_answer, 
						  String member_gender, String member_birth_date); // 회원가입
	
}
