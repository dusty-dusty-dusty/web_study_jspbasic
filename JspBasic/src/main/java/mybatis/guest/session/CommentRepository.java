package mybatis.guest.session;

import java.io.*;
import java.util.*;

import mybatis.guest.model.Comment;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.*;

public class CommentRepository 
{
	//	private final String namespace = "CommentMapper";

	private SqlSessionFactory getSqlSessionFactory() {
		
		InputStream inputStream;
		try {
			inputStream = Resources.getResourceAsStream("mybatis-config.xml");
		} catch (IOException e) {
			throw new IllegalArgumentException(e);
		}
		SqlSessionFactory sessFactory =  new SqlSessionFactoryBuilder().build(inputStream);
		return sessFactory;
	}
	
	
	/***
	 * jdbc  : connection
	 * mybais : sqlsession
	 */
	
	public List<Comment> selectComment(){
		
		SqlSession sess = getSqlSessionFactory().openSession();
		try {
			List<Comment> result = sess.selectList("CommentMapper.selectComment");
			System.out.println(result.size());
			return result;
		}finally {
			sess.close();
		}
		
	}
	
	
	/*
	 * SqlSession 을 통해 mapper를 찾는데 
	 * selection 
	 * selectone 
	 * insert 
	 * update 
	 * delete
	 */
	
	/*
	 * jdbc : 기본값이 auto commit
	 * mybatis : 자동커밋이 아님  
	 */
	public List<Comment> selectComment(String searchKey, String searchWord){
		
		System.out.println("[CommentRepository][selectComment]:"+searchKey+"/"+searchWord );
		
		HashMap map = new HashMap();
		map.put(searchKey, searchWord); 
		//예시 : map.put("user_id","작성자검색어");
		// 예시 : map.put("comment_content","글내용검색어");
		
		// 이미 연결된 연결객체를 얻어오기
		SqlSession sess = getSqlSessionFactory().openSession();
		try {
			List<Comment> result = sess.selectList("CommentMapper.selectComment", map); //
			
			System.out.println("-----db 결과------");
			for(Comment temp : result) {
				System.out.println(temp.toString());
			}
			
			return result;
		}finally {
			sess.close(); // 연결객체를 반납  반환X
		}
	}
	
	
	
	public void insertComment(Comment c) {
		// 이미 연결된 연결객체를 얻어오기
		SqlSession sess = getSqlSessionFactory().openSession();
		try {
			int result = sess.insert("CommentMapper.insertComment", c); //
			if(result == 1)sess.commit();
		}finally {
			sess.close(); // 연결객체를 반납 반환X
		}
	}
	
	
	public Comment selectCommentByPK(long commentNo) {
		// 이미 연결된 연결객체를 얻어오기
		SqlSession sess = getSqlSessionFactory().openSession();
		try {
			HashMap map = new HashMap();
			map.put("commentNo", commentNo);
			Comment result = sess.selectOne("CommentMapper.selectComment", map);
			return result;
		}finally {
			sess.close(); // 연결객체를 반납 반환X
		}
	}
	
	public void deleteComment(long commentNo) {
		SqlSession sess = getSqlSessionFactory().openSession();
		try {
			sess.delete("CommentMapper.deleteComment", commentNo);
			sess.commit();
		} finally {
			
		}
		
	}
	
	public void updateComment(Comment c) {
		SqlSession sess = getSqlSessionFactory().openSession();
		try {
			sess.delete("CommentMapper.updateComment", c);
			sess.commit();
		} finally {
			
		}
	}
	
}
