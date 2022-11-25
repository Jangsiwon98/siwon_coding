package com.boot.jdbc.model.biz;

import com.boot.jdbc.model.dto.MovieDto;

public interface MovieBiz {
	public MovieDto selectMovie(int movieno);
}
