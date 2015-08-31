package com.whistle.web.vo;

import java.util.Date;

public class Comment {
	
	
	
	private	int intId;
	private	int articleId;
	private	int writerId;
	private	String content;
	private	Date regDate;
	
	
	/**** Comments View   ****/
	
	private String writerName;
	
	private int cntGood;
	private int cntNotGood;
	
	
	
	public int getIntId() {
		return intId;
	}
	public void setIntId(int intId) {
		this.intId = intId;
	}
	
	
	public int getArticleId() {
		return articleId;
	}
	public void setArticleId(int articleId) {
		this.articleId = articleId;
	}
	public int getWriterId() {
		return writerId;
	}
	public void setWriterId(int writerId) {
		this.writerId = writerId;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}

	public String getWriterName() {
		return writerName;
	}
	public void setWriterName(String writerName) {
		this.writerName = writerName;
	}
	public int getCntGood() {
		return cntGood;
	}
	public void setCntGood(int cntGood) {
		this.cntGood = cntGood;
	}
	public int getCntNotGood() {
		return cntNotGood;
	}
	public void setCntNotGood(int cntNotGood) {
		this.cntNotGood = cntNotGood;
	}
	
}
