package com.boot.jdbc.model.biz;

import java.util.List;

import com.boot.jdbc.model.dto.NoticeDto;

public interface NoticeBiz {
	public List<NoticeDto> selectList();
	public NoticeDto selectOne(int boardno);
}