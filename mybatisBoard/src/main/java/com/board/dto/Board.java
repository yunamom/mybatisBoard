package com.board.dto;

import java.util.Date;

public class Board {

	int unq;
	String title;
	String name;
	String content;
	int hits;
	Date rdate;

	public int getUnq() {
		return unq;
	}

	public void setUnq(int unq) {
		this.unq = unq;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public int getHits() {
		return hits;
	}

	public void setHits(int hits) {
		this.hits = hits;
	}

	public Date getRdate() {
		return rdate;
	}

	public void setRdate(Date rdate) {
		this.rdate = rdate;
	}

}
