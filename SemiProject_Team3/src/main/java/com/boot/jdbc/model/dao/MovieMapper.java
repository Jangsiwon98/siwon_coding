package com.boot.jdbc.model.dao;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.boot.jdbc.model.dto.MovieDto;

@Mapper
public interface MovieMapper {

	
	@Select(" SELECT * FROM MOVIEBOARD WHERE MOVIENO = #{movieNo} ")
	MovieDto selectMovie(int movieno);
}
