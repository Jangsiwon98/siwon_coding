package com.boot.jdbc.model.dto;

import java.util.Date;

public class ReviewDto {
	private int reviewno;
	private String reviewcontent;
	private String reviewstar;
	private String reviewdate;
	private int reviewlike;
	private String reviewid;
	private int likecount;
	
	
	public ReviewDto() {
		super();
	}

	public ReviewDto(int reviewno, String reviewcontent, String reviewstar, String reviewdate, int reviewlike, int likecount, String reviewid) {
		super();
		this.reviewno = reviewno;
		this.reviewcontent = reviewcontent;
		this.reviewstar = reviewstar;
		this.reviewdate = reviewdate;
		this.reviewlike = reviewlike;
		this.likecount = likecount;
		this.reviewid = reviewid;
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

	public String getReviewdate() {
		return reviewdate;
	}

	public void setReviewdate(String reviewdate) {
		this.reviewdate = reviewdate;
	}

	public int getReviewlike() {
		return reviewlike;
	}

	public void setReviewlike(int reviewlike) {
		this.reviewlike = reviewlike;
	}

	public int getLikecount() {
		return likecount;
	}

	public void setLikecount(int likecount) {
		this.likecount = likecount;
	}

	public String getReviewid() {
		return reviewid;
	}

	public void setReviewid(String reviewid) {
		this.reviewid = reviewid;
	}

	@Override
	public String toString() {
		return "ReviewDto [reviewno=" + reviewno + ", reviewcontent=" + reviewcontent + ", reviewstar=" + reviewstar
				+ ", reviewdate=" + reviewdate + ", reviewlike=" + reviewlike + ", reviewid=" + reviewid
				+ ", likecount=" + likecount + "]";
	}
	
	
	
}