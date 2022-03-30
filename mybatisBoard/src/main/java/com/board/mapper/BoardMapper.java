package com.board.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.board.dto.Board;
import com.board.model.Pagination;

@Mapper
public interface BoardMapper {
	/* 이 메소드는 장문의 sql 이기때문에 xml 에 구현하겠습니다. */
	List<Board> findAll(Pagination pagination);

	@Select("SELECT COUNT(*) FROM board")
	int count();
	
	@Select("SELECT "
		  + "title,"
		  + "content,"
	      + "name,"
	      + "rdate,"
	      + "hits "
	      + "FROM board WHERE unq = #{unq}")
	Board findOne(int unq);
	
	public int updatehits(int unq);
	
	@Insert("INSERT board (title, content, name, hits, rdate) "
	      + "VALUES (#{title}, #{content}, #{name}, 0, sysdate())")
	@Options(useGeneratedKeys=true, keyProperty = "unq")
	void insert(Board board);

	@Delete("DELETE FROM board WHERE unq = #{unq}")
	void delete(int unq);
}