package com.board.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.board.dto.Board;

@Mapper
public interface BoardMapper {
	
	@Select("SELECT * FROM board")
	List<Board> findAll();

}
