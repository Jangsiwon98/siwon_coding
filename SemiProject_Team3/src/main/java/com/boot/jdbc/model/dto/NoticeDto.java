package com.boot.jdbc.model.dto;

import java.util.Date;

public class NoticeDto {
	private int boardno;
	private String memberid;
	private String boardtitile;
	private String boardcontent;
	private Date boarddate;
	
	public NoticeDto() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public NoticeDto(int boardno, String memberid, String boardtitile, String boardcontent, Date boarddate) {
		super();
		this.boardno = boardno;
		this.memberid = memberid;
		this.boardtitile = boardtitile;
		this.boardcontent = boardcontent;
		this.boarddate = boarddate;
	}
	
	public int getBoardno() {
		return boardno;
	}
	public void setBoardno(int boardno) {
		this.boardno = boardno;
	}
	public String getMemberid() {
		return memberid;
	}
	public void setMemberid(String memberid) {
		this.memberid = memberid;
	}
	public String getBoardtitile() {
		return boardtitile;
	}
	public void setBoardtitile(String boardtitile) {
		this.boardtitile = boardtitile;
	}
	public String getBoardcontent() {
		return boardcontent;
	}
	public void setBoardcontent(String boardcontent) {
		this.boardcontent = boardcontent;
	}
	public Date getBoarddate() {
		return boarddate;
	}
	public void setBoarddate(Date boarddate) {
		this.boarddate = boarddate;
	}
}
