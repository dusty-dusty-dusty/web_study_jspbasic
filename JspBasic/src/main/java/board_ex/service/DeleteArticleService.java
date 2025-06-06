package board_ex.service;

import board_ex.model.*;

public class DeleteArticleService {
	
	private static DeleteArticleService instance;
	private DeleteArticleService(){}
	public static DeleteArticleService getInstance()  throws BoardException{
		if( instance == null )
		{
			instance = new DeleteArticleService();
		}
		return instance;
	}

	
	public int delete( String id, String password ) throws BoardException{
		
		// DB에서 delete
		int article_id = 0;
		if( id!=null ) article_id = Integer.parseInt( id );
		int result = BoardDao.getInstance().delete(article_id, password);
	
		return result;
		
	}
}
