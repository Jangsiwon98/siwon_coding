package com.boot.jdbc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.boot.jdbc.model.biz.MovieBiz;
import com.boot.jdbc.model.biz.NoticeBiz;
import com.boot.jdbc.model.biz.ReviewBiz;
import com.boot.jdbc.model.dto.NoticeDto;

@Controller
@RequestMapping("/mymovie")
public class MyMovieController {
	@Autowired
	private NoticeBiz noticeBiz;
	@Autowired
	private ReviewBiz reviewBiz;
	@Autowired
	private MovieBiz movieBiz;
	
	@GetMapping("/main")
	public String main(Model model) {
		model.addAttribute("movielist", movieBiz.selectMovieList());
		return "main";
	}

	@GetMapping("/notice/list")
	public String selectNoticeList(Model model) {
		model.addAttribute("noticelist", noticeBiz.selectList());
		return "noticelist";
	}

	@GetMapping("/notice/detail")
	public String selectNotice(Model model, int boardno) {
		model.addAttribute("dto", noticeBiz.selectOne(boardno));
		return "noticedetail";
	}
	
	@GetMapping("/notice/insertform")
	public String insertNoticeForm() {
		return "noticeinsert";
	}
	
	@PostMapping("/notice/insert")
	public String insertNotice(NoticeDto dto) {
		if(noticeBiz.insert(dto)>0) {
			return "redirect:/mymovie/notice/list";
		}else {
			return "redirect:/mymovie/notice/insertform";
		}
		
	}
	
	@GetMapping("/notice/updateform")
	public String updateNotice(Model model, int boardno) {
		model.addAttribute("dto", noticeBiz.selectOne(boardno));
		return "noticeupdate";
	}
	
	@PostMapping("/notice/update")
	public String update(NoticeDto dto) {
		if(noticeBiz.update(dto)>0) {
			return "redirect:/mymovie/notice/detail?boardno="+dto.getBoardno();
		}else {
			return "redirect:/mymovie/notice/updateform?boardno="+dto.getBoardno();
		}
	}
	
	@GetMapping("/notice/delete")
	public String delete(int boardno) {
		if(noticeBiz.delete(boardno)>0) {
			return "redirect:/mymovie/notice/list";
		}else {
			return "redirect:/mymovie/notice/detail?boardno="+boardno;
		}
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