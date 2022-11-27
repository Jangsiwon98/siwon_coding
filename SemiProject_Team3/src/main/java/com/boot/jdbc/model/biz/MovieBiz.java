package com.boot.jdbc.model.biz;

import java.util.List;

import com.boot.jdbc.model.dto.MovieDto;

public interface MovieBiz {
	public MovieDto selectMovie(int movieno);
	public List<MovieDto> selectMovieList();
}
