package com.mz2b.framework;

public class Pagination {
	private int count; //����
	private int curPage = 1; //��ǰҳ��
	private int curPagin = 10; // ��ҳ����
	
	public int getCurPagin() {
		return curPagin;
	}
	public void setCurPagin(int curPagin) {
		this.curPagin = curPagin;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public int getCurPage() {
		return curPage;
	}
	public void setCurPage(int curPage) {
		this.curPage = curPage;
	}
	public int getCurCount() {
		return curPagin * (curPage - 1);
	}
	
	public boolean firstEnable() {
		return previoEnable();
	}
	public boolean previoEnable() {
	    return curPage > 1;
	}
	public boolean nextEnable() {
	    return curPage * curPagin < count;
	}
	public boolean lastEnable() {
		return nextEnable();
	}

}
