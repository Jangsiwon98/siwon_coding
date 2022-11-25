package com.boot.jdbc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.boot.jdbc.model.biz.NoticeBiz;
import com.boot.jdbc.model.biz.ReviewBiz;

@Controller
@RequestMapping("/mymovie")
public class MyMovieController {
	@Autowired
	private NoticeBiz noticeBiz;
	private ReviewBiz reviewBiz;
	
	@GetMapping("/main")
	public String main() {
		return("main");
	}
	
	@GetMapping("/list")
	public String selectList(Model model) {
		model.addAttribute("list", noticeBiz.selectList());
		return "noticelist";
	}
	
	@GetMapping("/detail")
	public String selectOne(Model model, int boardno) {
		model.addAttribute("dto", noticeBiz.selectOne(boardno));
		return "noticedetail";
	}
	
	@GetMapping("/reviewlist")
	public String selectRVList(Model model) {
		model.addAttribute("list", reviewBiz.selectRVList());
		return "reviewlist";
	}

	
}
