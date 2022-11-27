package com.boot.jdbc.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.boot.jdbc.model.biz.MemberBiz;
import com.boot.jdbc.model.dto.MemberDto;

@Controller
public class MemberController {
	
	@Autowired
	private MemberBiz biz;
	
	@RequestMapping("/login.do")
	public String login() {
		return "login";
	}
	
	@RequestMapping("/signup.do")
	public String signup() {
		return "signup";
	}
	
	@RequestMapping("insertres.do")
	public String insertRes(MemberDto dto) {
		int res = biz.insert(dto);
		
		if(res>0) {
			return "redirect:login.do";
		}else {
			return "redirect:signup.do";
		}
	}
	
	@RequestMapping(value="login.do", method=RequestMethod.POST)
	@ResponseBody
	public Map<String, Boolean> ajaxLogin(HttpSession session, @RequestBody MemberDto dto){
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
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

}
