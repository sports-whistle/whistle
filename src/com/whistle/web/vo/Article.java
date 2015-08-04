

package com.whistle.web.vo;

import java.util.Date;
import java.util.List;

public class Article {

	private int intId;
	private String title;
	private int writerId;
	private String content; // 이거 데이터 타입 ...
	private int hit;
	private Date regDate;
	private int categoryId;
	
	
	/********** Articles view  ************/
	
	
	private String writerName;
	
	
	private int cntCmnt;
	private int cntGood;
	private int cntNotGood;

	
	/**to get article's comment */
	
	
	private List<Comment> commentsOfThis;
	
	private List<AttachedFile> attachedFileOfArticle;
	
	




	public List<Comment> getCommentsOfThis() {
		return commentsOfThis;
	}



	public void setCommentsOfThis(List<Comment> commentsOfThis) {
		this.commentsOfThis = commentsOfThis;
	}



	public List<AttachedFile> getAttachedFileOfArticle() {
		return attachedFileOfArticle;
	}



	public void setAttachedFileOfArticle(List<AttachedFile> attachedFileOfArticle) {
		this.attachedFileOfArticle = attachedFileOfArticle;
	}



	public List<Comment> getComments(){
		
		return null;
	}



	public int getIntId() {
		return intId;
	}



	public void setIntId(int intId) {
		this.intId = intId;
	}



	public String getTitle() {
		return title;
	}



	public void setTitle(String title) {
		this.title = title;
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



	public int getHit() {
		return hit;
	}



	public void setHit(int hit) {
		this.hit = hit;
	}



	public Date getRegDate() {
		return regDate;
	}



	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}



	public int getCategoryId() {
		return categoryId;
	}



	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}



	public String getWriterName() {
		return writerName;
	}



	public void setWriterName(String writerName) {
		this.writerName = writerName;
	}



	public int getCntCmnt() {
		return cntCmnt;
	}



	public void setCntCmnt(int cntCmnt) {
		this.cntCmnt = cntCmnt;
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
