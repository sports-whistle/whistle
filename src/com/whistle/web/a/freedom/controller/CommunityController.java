package com.whistle.web.a.freedom.controller;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.whistle.web.dao.ArticleDao;
import com.whistle.web.dao.AttachedFileDao;
import com.whistle.web.dao.CommentDao;
import com.whistle.web.dao.RateArticleDao;
import com.whistle.web.vo.Article;
import com.whistle.web.vo.AttachedFile;
import com.whistle.web.vo.Comment;
import com.whistle.web.vo.RateArticle;




@Controller
@RequestMapping("/community/*")
public class CommunityController {
	
	
	@Autowired
	ArticleDao articleDao;
	@Autowired
	CommentDao commentDao;
	@Autowired
	RateArticleDao rateArticleDao;
	@Autowired
	AttachedFileDao attachedFileDao;
	
	
	@RequestMapping(value="article-list", method=RequestMethod.GET)
	public String articleList(Model model, HttpServletRequest request){
		
		String _page = request.getParameter("page");
		List<Article> articleList = null;

		int category = 1;
		int page = 1;
		if (/*_category != null &&*/ _page != null) {

		/*	category = Integer.parseInt(_category);*/
			page = Integer.parseInt(_page);

		}
		
		
		articleList = this.articleDao.getArticles(page);
	
		model.addAttribute("articleList",articleList);
		

		return "/WEB-INF/view/community/article-list.jsp";
	}
	
	
	@RequestMapping(value="test", method=RequestMethod.GET)
	public String test(Model model){
		
		
		AttachedFile testFile = new AttachedFile();
		testFile.setArticleId(3);
		testFile.setName("test-file-name");
		testFile.setUrl("test-url");
		testFile.setSize(20000);
	
		
		attachedFileDao.delAttachedFile(1);
		
		
		model.addAttribute("file",testFile);
		
		return "/WEB-INF/view/community/test.jsp";
	}
	
	
	
	
	@RequestMapping(value="article-detail", method=RequestMethod.GET)
	public String articleDetail(Model model, HttpServletRequest request){
		
		String _detail = request.getParameter("detail");
		int articleId = Integer.parseInt(_detail);
		
		//ArticleDao articleDao = new MyBatisArticleDao();
		Article article = this.articleDao.getArticle(articleId);
		
	
		model.addAttribute("article",article);
		

		return "/WEB-INF/view/community/article-detail.jsp";
	}
	
	
	@RequestMapping(value="article-detail", method=RequestMethod.POST)
	public String articleDetail(Model model, HttpServletRequest request, HttpServletResponse response){
		
		
		//* 후에 수정 .. 왜 이렇게 했었더라 ... 아그 코멘트에서 articleId 받아오는거 떄문에??*//
		int articleId = Integer.parseInt(request.getParameter("articleId"));
		
		if(request.getParameter("btn").equals("regComment")){
			
			/*<input type="hidden" name="articleId" value="${article.intId}" />
			<input type="text" name="writerId"/>
			<input type="text" name="content"/>
			<input type="submit" name="btn" value="regComment"/>*/
			
			articleId = Integer.parseInt(request.getParameter("articleId"));
			int writerId = Integer.parseInt(request.getParameter("writerId"));
			String content = request.getParameter("content");
			
			
			Comment newComment = new Comment();
			newComment.setArticleId(articleId);
			newComment.setWriterId(writerId);
			newComment.setContent(content);
			
			
			
			this.commentDao.regComment(newComment);
				
			return "redirect:article-detail?detail="+Integer.toString(articleId);
			
		}else if(request.getParameter("btn").equals("likeArticle")){
			
			
		/*	<form method="post">
			<input type="hidden" name="articleId" value="${article.intId}"/>
			<label>Uid-like</label><input type="text" name="uid"/>
			<input type="submit" name="btn" value="likeArticle"/>
			</form>*/
			
			articleId = Integer.parseInt(request.getParameter("articleId"));
			int uid = Integer.parseInt(request.getParameter("uid"));
			
			RateArticle rateArticle = new RateArticle();
			rateArticle.setArticleId(articleId);
			rateArticle.setUid(uid);
			rateArticle.setGood(true);
			
			
			
			rateArticleDao.rate(rateArticle);
			
			return "redirect:article-detail?detail="+Integer.toString(articleId);
			
			
		}else if(request.getParameter("btn").equals("dislikeArticle")){
			
			/*<form method="post">
			<input type="hidden" name="articleId" value="${article.intId}"/>
			<label>Uid-like</label><input type="text" name="uid"/>
			<input type="submit" name="btn" value="dislikeArticle"/>
			</form>*/
			
			articleId = Integer.parseInt(request.getParameter("articleId"));
			int uid = Integer.parseInt(request.getParameter("uid"));
			
			RateArticle rateArticle = new RateArticle();
			rateArticle.setArticleId(articleId);
			rateArticle.setUid(uid);
			rateArticle.setGood(false);
			
			
			
			rateArticleDao.rate(rateArticle);
			
			return "redirect:article-detail?detail="+Integer.toString(articleId);
			
		}else if(request.getParameter("btn").equals("deleteArticle")){
			
			
			articleId = Integer.parseInt(request.getParameter("articleId"));
			
			
			
			
			articleDao.delArticle(articleId);
			
			return "redirect:article-list";
		}

		
		
		/* default return*/
		return "redirect:article-detail?detail="+Integer.toString(articleId);
	}
	
	
	@RequestMapping(value="write-article", method=RequestMethod.GET)
	public String writeArticle(){
		
		return "/WEB-INF/view/community/write-article.jsp";
	}
	
	
	
	@RequestMapping(value="write-article", method=RequestMethod.POST)
	public String writeArticle(Article newArticle,MultipartFile afile,HttpServletRequest request){
		
		
		
	

		if(!afile.isEmpty())
		{
			
			ServletContext application = request.getServletContext();
						
			String url = "/resource/community/upload";
			String path = application.getRealPath(url);
			String temp = afile.getOriginalFilename();//part.getSubmittedFileName();
			String fname = temp.substring(temp.lastIndexOf("\\")+1);
			String fpath = path + "\\" + fname;
			
			
			try {
				InputStream ins = afile.getInputStream();
				OutputStream outs = new FileOutputStream(fpath);
				
				byte[] 대야 = new byte[1024];
				int len = 0;
				
				while((len = ins.read(대야, 0, 1024)) >= 0)
					outs.write(대야, 0, len);
				
				outs.flush();
				outs.close();
				ins.close();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}//part.getInputStream();
			
			
			
			articleDao.regArticle(newArticle);
			
			
			AttachedFile newFile = new AttachedFile();
			newFile.setArticleId(newArticle.getIntId());
			newFile.setName(fname);
			newFile.setSize((int)afile.getSize());
			
			
		
			newFile.setUrl("/"+url+"/"+fname);
			
			attachedFileDao.addAttachedFile(newFile);
			return "redirect:article-detail?detail="+Integer.toString(newArticle.getIntId());
		}
					
		/* 등록된 글을 받아서, 작성 한 글로 redirect 학 위한 트랜잭션 처리가 필요함*/
		//int articleId;
		articleDao.regArticle(newArticle);
		
		
		
		
		return "redirect:article-detail?detail="+Integer.toString(newArticle.getIntId());
	}
	
	

	
	
}
