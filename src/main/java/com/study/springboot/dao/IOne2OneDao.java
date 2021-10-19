package com.study.springboot.dao;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface IOne2OneDao {
	public int addOne2one(String one2one_name, String one2one_phone, String one2one_email, 
							String one2one_address, String one2one_title, String one2one_content); // 1:1문의 추가
}
