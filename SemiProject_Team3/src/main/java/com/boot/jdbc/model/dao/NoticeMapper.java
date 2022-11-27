package com.boot.jdbc.model.dao;

import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.boot.jdbc.model.dto.NoticeDto;

@Mapper
public interface NoticeMapper {
	
	@Select("SELECT * FROM BOARDINFO ORDER BY BOARDNO DESC")
	List<NoticeDto> selectList();

	@Select("SELECT BOARDNO, MEMBERNAME, BOARDTITLE, BOARDCONTENT, BOARDDATE\n"
			+ "FROM BOARDINFO, MEMBERINFO\n"
			+ "WHERE BOARDNO=${boardno} AND BOARDINFO.MEMBERID = MEMBERINFO.MEMBERID")
	NoticeDto selectOne(int boardno);
}