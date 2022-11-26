package com.boot.jdbc.model.dao;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.boot.jdbc.model.dto.ReviewDto;

@Mapper
public interface ReviewMapper {
	
	@Select("SELECT * FROM REVIEWBOARD ORDER BY REVIEWNO DESC")
	List<ReviewDto> selectRVList();
	
	@Insert("INSERT * INTO REVIEWBOARD VALUES(${reviewno}, ${reviewcontent}, NULL, NULL")
	int insertRVList(ReviewDto dto);
	
	/*
	 * private int reviewno;
	private String reviewcontent;
	private int reviewstar;
	private Date reviewdate;
	private int reviewlike;
	 * */
}