package com.boot.jdbc.model.dto;

public class LikeDto {

	private int likeno;
	private String likeid;
	private int likecount;
	
	public LikeDto() {
		super();
	}
	public LikeDto(int likeno, String likeid, int likecount) {
		super();
		this.likeno = likeno;
		this.likeid = likeid;
		this.likecount = likecount;
	}
	public int getLikeno() {
		return likeno;
	}
	public void setLikeno(int likeno) {
		this.likeno = likeno;
	}
	public String getLikeid() {
		return likeid;
	}
	public void setLikeid(String likeid) {
		this.likeid = likeid;
	}
	public int getLikecount() {
		return likecount;
	}
	public void setLikecount(int likecount) {
		this.likecount = likecount;
	}
	
	
	
}
