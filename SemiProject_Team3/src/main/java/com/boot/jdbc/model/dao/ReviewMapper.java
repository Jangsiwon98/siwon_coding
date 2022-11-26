package com.boot.jdbc.model.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.boot.jdbc.model.dto.ReviewDto;

@Mapper
public interface ReviewMapper {
	
	@Select("SELECT * FROM REVIEWBOARD ORDER BY REVIEWNO DESC")
	List<ReviewDto> selectRVList();
}
