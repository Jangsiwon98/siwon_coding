package com.boot.jdbc.model.biz;

import com.boot.jdbc.model.dto.MemberDto;

public interface MemberBiz {
	
	public int insert(MemberDto dto);
	public MemberDto login(MemberDto dto);
	public MemberDto selectmember(String memberid);
	public MemberDto selectmyreview(String memberid);
	
}
