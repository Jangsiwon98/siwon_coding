package com.boot.jdbc.model.dto;

import java.util.Date;

public class ReviewDto {
	private int reviewno;
	private String reviewcontent;
	private int reviewstar;
	private Date reviewdate;
	private int reviewlike;
	
	public ReviewDto() {
		super();
	}
	public ReviewDto(int reviewno, String reviewcontent, int reviewstar, Date reviewdate, int reviewlike) {
		super();
		this.reviewno = reviewno;
		this.reviewcontent = reviewcontent;
		this.reviewstar = reviewstar;
		this.reviewdate = reviewdate;
		this.reviewlike = reviewlike;
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
	public int getReviewstar() {
		return reviewstar;
	}
	public void setReviewstar(int reviewstar) {
		this.reviewstar = reviewstar;
	}
	public Date getReviewdate() {
		return reviewdate;
	}
	public void setReviewdate(Date reviewdate) {
		this.reviewdate = reviewdate;
	}
	public int getReviewlike() {
		return reviewlike;
	}
	public void setReviewlike(int reviewlike) {
		this.reviewlike = reviewlike;
	}
	
	
}
