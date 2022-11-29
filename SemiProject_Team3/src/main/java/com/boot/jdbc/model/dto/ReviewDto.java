package com.boot.jdbc.model.dto;

import java.util.Date;

public class ReviewDto {
	private int reviewno;
	private String reviewcontent;
	private String reviewstar;
	private Date reviewdate;
	private String memberid;
	private int likecount;
	
	
	public ReviewDto() {
		super();

	}


	public ReviewDto(int reviewno, String reviewcontent, String reviewstar, Date reviewdate, String memberid,
			int likecount) {
		super();
		this.reviewno = reviewno;
		this.reviewcontent = reviewcontent;
		this.reviewstar = reviewstar;
		this.reviewdate = reviewdate;
		this.memberid = memberid;
		this.likecount = likecount;
	}


	public int getReviewno() {
		return reviewno;
	}


	public void setReviewno(int reviewno) {
		this.reviewno = reviewno;
	}


	public String getReviewcontent() {
		return reviewcontent;
	}


	public void setReviewcontent(String reviewcontent) {
		this.reviewcontent = reviewcontent;
	}


	public String getReviewstar() {
		return reviewstar;
	}


	public void setReviewstar(String reviewstar) {
		this.reviewstar = reviewstar;
	}


	public Date getReviewdate() {
		return reviewdate;
	}


	public void setReviewdate(Date reviewdate) {
		this.reviewdate = reviewdate;
	}


	public String getMemberid() {
		return memberid;
	}


	public void setMemberid(String memberid) {
		this.memberid = memberid;
	}


	public int getLikecount() {
		return likecount;
	}


	public void setLikecount(int likecount) {
		this.likecount = likecount;
	}
	
	
}