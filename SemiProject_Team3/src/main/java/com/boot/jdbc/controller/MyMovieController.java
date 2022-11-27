package com.boot.jdbc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.boot.jdbc.model.biz.MovieBiz;
import com.boot.jdbc.model.biz.NoticeBiz;
import com.boot.jdbc.model.biz.ReviewBiz;

@Controller
@RequestMapping("/mymovie")
public class MyMovieController {
	@Autowired
	private NoticeBiz noticeBiz;
	private ReviewBiz reviewBiz;
	private MovieBiz movieBiz;
	
	@GetMapping("/main")
	public String main(Model model) {
		model.addAttribute("movielist", movieBiz.selectMovieList());
		return("main");
	}

	@GetMapping("/noticelist")
	public String selectList(Model model) {
		model.addAttribute("noticelist", noticeBiz.selectList());
		return "noticelist";
	}

	@GetMapping("/noticedetail")
	public String selectOne(Model model, int boardno) {
		model.addAttribute("dto", noticeBiz.selectOne(boardno));
		return "noticedetail";
	}

	@GetMapping("/reviewlist")
	public String selectRVList(Model model) {
		model.addAttribute("list", reviewBiz.selectRVList());
		return "reviewlist";
	}
	
	//===영화상세페이지 관련(채)===
	
	@GetMapping("/movieDetail")
	public String selectMovie(Model model, int movieno) {
		model.addAttribute("dto", movieBiz.selectMovie(movieno));
		return "movieDetail";
	}
	
}