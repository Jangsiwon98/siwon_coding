package com.boot.jdbc.model.dto;

import java.util.Date;

public class NoticeDto {
	private int boardno;
	private String membername;
	private String boardtitle;
	private String boardcontent;
	private Date boarddate;
	
	public NoticeDto() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public NoticeDto(int boardno, String membername, String boardtitle, String boardcontent, Date boarddate) {
		super();
		this.boardno = boardno;
		this.membername = membername;
		this.boardtitle = boardtitle;
		this.boardcontent = boardcontent;
		this.boarddate = boarddate;
	}
	
	public int getBoardno() {
		return boardno;
	}
	public void setBoardno(int boardno) {
		this.boardno = boardno;
	}
	public String getMembername() {
		return membername;
	}
	public void setMembername(String membername) {
		this.membername = membername;
	}
	public String getBoardtitle() {
		return boardtitle;
	}
	public void setBoardtitile(String boardtitle) {
		this.boardtitle = boardtitle;
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
