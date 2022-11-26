package com.boot.jdbc.model.biz;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.boot.jdbc.model.dao.MovieMapper;
import com.boot.jdbc.model.dto.MovieDto;



@Service
public class MovieImpl implements MovieBiz{
	
	@Autowired
	private MovieMapper movieMapper;

	@Override
	public MovieDto selectMovie(int movieno) {
		return movieMapper.selectMovie(movieno);
	}

}
