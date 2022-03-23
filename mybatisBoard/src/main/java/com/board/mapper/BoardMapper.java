package com.board.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Select;

import com.board.dto.Board;

@Mapper
public interface BoardMapper {
	
	@Select("SELECT * FROM board")
	List<Board> findAll();
	
	@Select("SELECT * FROM board WHERE unq = #{unq}")
	Board findOne(int unq);
	
	@Insert("INSERT board (title, content, name, hits, rdate) "
	      + "VALUES (#{title}, #{content}, #{name}, 0, sysdate())")
	@Options(useGeneratedKeys=true, keyProperty = "unq")
	void insert(Board board);

	@Delete("DELETE FROM board WHERE unq = #{unq}")
	void delete(int unq);
}
