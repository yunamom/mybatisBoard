package com.board.model;

public class Pagination {

	/* 현재 페이지, 디폴트 값은 1 */
	int pg = 1;

	/* 페이지 당 레코드 수, 디폴트 값은 5 */
	int sz = 5;

	/* 전체 레코드 수 */
	int recordCount;

	public String getQueryString() {
		return String.format("pg=%d&sz=%d", pg, sz);
	}

	public int getPg() {
		return pg;
	}

	public void setPg(int pg) {
		this.pg = pg;
	}

	public int getSz() {
		return sz;
	}

	public void setSz(int sz) {
		this.sz = sz;
	}

	public int getRecordCount() {
		return recordCount;
	}

	public void setRecordCount(int recordCount) {
		this.recordCount = recordCount;
	}
}