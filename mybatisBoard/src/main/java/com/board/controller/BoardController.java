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

@Controller
@RequestMapping("/board")
public class BoardController {
	
	@Autowired BoardMapper boardMapper;
		
	@RequestMapping("list")
	public String list(Model model) {
		List<Board>boards = boardMapper.findAll();
		model.addAttribute("boards" , boards);
		return "board/list";
	}
	
	@GetMapping("write")
	public String write(Model model) {
		Board board = new Board();
		model.addAttribute("board" , board);
		return "board/write";
	}
	
	@PostMapping("write")
	public String write(Model model, Board board) {
		boardMapper.insert(board);
		return "redirect:list";
	}
	
	@GetMapping("detail")
	public String detail(Model model, @RequestParam("unq") int unq) {
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
