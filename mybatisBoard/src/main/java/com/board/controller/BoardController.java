package com.board.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.board.dto.Board;
import com.board.mapper.BoardMapper;
import com.board.model.Pagination;

@Controller
@RequestMapping("/board")
public class BoardController {
	
	@Autowired BoardMapper boardMapper;
		
	@RequestMapping("list")
	public String list(Model model, Pagination pagination) {
		List<Board>boards = boardMapper.findAll(pagination);
		/* 마지막 페이지 번호 */
		pagination.setRecordCount(boardMapper.count());
		/* 전체 게시글 갯수 */
		model.addAttribute("total" , boardMapper.count());
		/* 한페이지 게시물 불러오기 */
		model.addAttribute("boards" , boards);
		return "board/list";
	}
	
	@GetMapping("write")
	public String write(Model model, Pagination pagination) {
		model.addAttribute("board", new Board());	
		return "board/write";
	}
	
	@PostMapping("write")
	public String write(Model model, Board board, Pagination pagination) {
		boardMapper.insert(board);
		return "redirect:list";
	}
	
	@GetMapping("detail")
	public String detail(Model model, @RequestParam("unq") int unq) {	
		/* 조회수 증가 */
		boardMapper.updatehits(unq);	
		/* 게시글 불러오기 */
		Board board = boardMapper.findOne(unq);
		model.addAttribute("board" , board);
		return "board/detail";
	}
	
	@RequestMapping("delete")
	public String delete(Model model, @RequestParam("unq") int unq) {
		boardMapper.delete(unq);
		return "redirect:list";
	}
}