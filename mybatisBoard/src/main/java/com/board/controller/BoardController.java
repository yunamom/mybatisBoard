package com.board.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.board.dto.Board;
import com.board.mapper.BoardMapper;

@Controller
@RequestMapping("/board")
public class BoardController {
	
	@Autowired BoardMapper boardMapper;
	
	@RequestMapping("write")
	public String boardWirte(Model model) {
		List<Board>boards = boardMapper.findAll();
		model.addAttribute("boards" , boards);
		return "board/write";
	}
	
	@RequestMapping("list")
	public String list(Model model) {
		List<Board>boards = boardMapper.findAll();
		model.addAttribute("boards" , boards);
		return "board/list";
	}
}
