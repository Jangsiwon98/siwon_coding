package com.boot.jdbc.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.boot.jdbc.model.biz.MemberBiz;
import com.boot.jdbc.model.dto.MemberDto;

@Controller
@RequestMapping("/member")
public class MemberController {
	
	private Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	@Autowired
	private MemberBiz biz;
	
	@RequestMapping("/loginform")
	public String login() {
		return "login";
	}
	
	@RequestMapping("/signupform")
	public String signup() {
		return "signup";
	}
	
	@RequestMapping("/signup")
	public String insertRes(MemberDto dto) {
		int res = biz.insert(dto);
		
		if(res>0) {
			return "redirect:/member/loginform";
		}else {
			return "redirect:/member/signupform";
		}
	}
	
	@RequestMapping(value="login", method=RequestMethod.POST)
	@ResponseBody
	public Map<String, Boolean> ajaxLogin(HttpSession session, @RequestBody MemberDto dto){
		logger.info("LOGIN");
		
		MemberDto res = biz.login(dto);
		boolean check = false;
		
		if(res != null) {
			session.setAttribute("login", res);
			check=true;
		}
		
		Map<String, Boolean> map = new HashMap<String,Boolean>();	
		map.put("check", check);
		
		return map;
	}
	
//	@PostMapping("/member/login")
//	public String login(@ModelAttribute MemberDto dto) {
//		MemberDto loginResult = biz.login(dto);
//		if(loginResult != null) {
//			// 로그인 성공
//			return "rediect:/mymovie/main";
//		}else{
//			// 로그인 실패
//			return "rediect:/member/loginform";
//		}
//		
//	}
	

	
	@RequestMapping("/mypage")
	public String mypage() {
		
		return "mypage";
	}
	
	@RequestMapping("/logout")
	public String logout() {
		
		return "login";
	}
	
	@GetMapping("/mypage")
	public String selectmember(HttpServletRequest request,Model model) {
		HttpSession session = request.getSession();
		MemberDto member = (MemberDto) session.getAttribute("login");
		
//		String memberid = (String) session.getAttribute("memberid");
//		System.out.println(memberid);
//		model.addAttribute("listdto", member);
		return "mypage";
	}
	
}

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	


