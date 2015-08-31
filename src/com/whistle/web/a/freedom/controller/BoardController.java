package com.whistle.web.a.freedom.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.whistle.web.dao.ArticleDao;
import com.whistle.web.dao.AttachedFileDao;
import com.whistle.web.dao.CommentDao;
import com.whistle.web.dao.RateArticleDao;
import com.whistle.web.vo.Article;
import com.whistle.web.vo.Comment;

@Controller
@RequestMapping("/freedom/*")
public class BoardController {
	
	
	@Autowired
	ArticleDao articleDao;
	@Autowired
	CommentDao commentDao;
	@Autowired
	RateArticleDao rateArticleDao;
	@Autowired
	AttachedFileDao attachedFileDao;
	
	
	@RequestMapping(value="board-list", method=RequestMethod.GET)
	public String boardGet(HttpServletRequest request, Model model){
		String _page = request.getParameter("page");
		List<Article> articleList = null;
		
		System.out.println("babo");
		
		int page = 1;
		if (_page != null) {
			page = Integer.parseInt(_page);
		}
		
		
		articleList = this.articleDao.getArticles(page);
		model.addAttribute("articleList",articleList);
		

		return "/WEB-INF/view/freedom/board-list.jsp";
	}
	
	
	
	@RequestMapping(value="board-detail", method=RequestMethod.GET)
	public String boardDetail(HttpServletRequest request, Model model){
		String _detail = request.getParameter("detail");
		int articleId = Integer.parseInt(_detail);
		
		//ArticleDao articleDao = new MyBatisArticleDao();
		Article article = this.articleDao.getArticle(articleId);
		
	
		model.addAttribute("article",article);
		

		return "/WEB-INF/view/freedom/board-detail.jsp";
	}
	
	@RequestMapping(value="board-detail", method=RequestMethod.POST)
	public String boardDetail(Model model, HttpServletRequest request, HttpServletResponse response){
		
		
		//* �Ŀ� ���� .. �� �̷��� �߾����� ... �Ʊ� �ڸ�Ʈ���� articleId �޾ƿ��°� ������??*//
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
				
			return "redirect:board-detail?detail="+Integer.toString(articleId);
			
		}else if(request.getParameter("btn").equals("deleteArticle")){
			
			
			articleId = Integer.parseInt(request.getParameter("articleId"));
			
			
			
			
			articleDao.delArticle(articleId);
			
			return "redirect:board-list";
		}

		
		
		/* default return*/
		return "redirect:article-detail?detail="+Integer.toString(articleId);
	}
	
	
	@RequestMapping(value="board-write-article", method=RequestMethod.GET)
	public String writeArticle(){
		
		return "/WEB-INF/view/freedom/board-write-article-editor.jsp";
	}
	
	
	
	@RequestMapping(value="board-write-article", method=RequestMethod.POST)
	public String writeArticle(Article newArticle/*,MultipartFile afile*/,HttpServletRequest request){
		
		
		
	
/*
		if(!afile.isEmpty())
		{
			
			ServletContext application = request.getServletContext();
						
			String url = "/resource/board/upload";
			String path = application.getRealPath(url);
			String temp = afile.getOriginalFilename();//part.getSubmittedFileName();
			String fname = temp.substring(temp.lastIndexOf("\\")+1);
			String fpath = path + "\\" + fname;
			
			
			try {
				InputStream ins = afile.getInputStream();
				OutputStream outs = new FileOutputStream(fpath);
				
				byte[] ��� = new byte[1024];
				int len = 0;
				
				while((len = ins.read(���, 0, 1024)) >= 0)
					outs.write(���, 0, len);
				
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
			return "redirect:board-detail?detail="+Integer.toString(newArticle.getIntId());
		}*/
					
		/* ��ϵ� ���� �޾Ƽ�, �ۼ� �� �۷� redirect �� ���� Ʈ����� ó���� �ʿ���*/
		//int articleId;
		articleDao.regArticle(newArticle);
		
		
		
		
		return "redirect:board-detail?detail="+Integer.toString(newArticle.getIntId());
	}
	
	
}
