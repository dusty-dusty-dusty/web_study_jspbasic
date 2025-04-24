package mybatis.guest.service;

import java.util.*;

import mybatis.guest.model.Comment;
import mybatis.guest.session.CommentRepository;

public class CommentService {
	
	private static CommentService service;
	
	private CommentService() {}
	public static CommentService getInstance(){
		if( service == null) service = new CommentService();
		return service;
	}
	
	// model : dao -> repository
	CommentRepository repo = new CommentRepository();
	
	public List<Comment> selectComment(){
		return repo.selectComment();
	}
	public void insertComment(Comment c) {
		repo.insertComment(c);
	}
	
	public Comment selectCommentByPK(long commentNo) {
		return repo.selectCommentByPK(commentNo);
	}
	
	public void deleteComment(long commentNo) {
		repo.deleteComment(commentNo);
	}
	
	public void updateComment(Comment c) {
	    repo.updateComment(c); 
	}
	
	
	public List<Comment> selectComment(String searchKey, String searchWord){
		return repo.selectComment(searchKey, searchWord);
	}
	
	
}