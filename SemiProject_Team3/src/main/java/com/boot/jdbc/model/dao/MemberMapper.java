package com.boot.jdbc.model.dao;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.boot.jdbc.model.dto.MemberDto;

@Mapper
public interface MemberMapper {

	@Insert(" INSERT INTO MEMBERINFO VALUES(#{memberid}, #{memberpw}, #{membername}, #{memberphone}, 'N', 'N') ")
	int insert(MemberDto dto);

	@Select(" SELECT * FROM MEMBERINFO WHERE MEMBERID=#{memberid} AND MEMBERPW=#{memberpw} ")
	MemberDto login(MemberDto dto);

	@Select(" SELECT MEMBERID,MEMVERNAME,MEMVERPHNE FROM MEMBERINFO WHERE MEMBERID=#{memberid} AND MEMBERPW=#{memberpw} ")
	MemberDto mypage(MemberDto dto);

}
