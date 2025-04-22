package guest.service;

import guest.model.Message;
import guest.model.MessageDao;
import guest.model.MessageException;

import java.util.List;

public class ListMessageService {

	//-------------------------------------------------------------------
	private int totalRecCount;		// 전체 레코드 수	
	private int pageTotalCount;		// 전체 페이지 수
	private int countPerPage = 3;	// 한페이지당 레코드 수
	
	private static ListMessageService instance;
	
	public static ListMessageService	getInstance() throws MessageException
	{
		if( instance == null )
		{
			instance = new ListMessageService();
		}
		return instance;
	}
	
	private ListMessageService()
	{
		
	}
	
	public List <Message> getMessageList(String pNum) throws MessageException
	{	
		int pageNo = 1;
		if ( pNum != null ) pageNo = Integer.parseInt(pNum);
		
		/*	페이지번호				첫번째레코드번호			두번째레코드번호
		 * 	1						1					3
		 * 	2						4					6
		 * 	3						7					9			
		 */
		int startRow = (pageNo-1) * countPerPage +1;
		int endRow =  pageNo * countPerPage;
		
		
		// 전체 레코드를 검색해 온다면
		List <Message> mlist = MessageDao.getInstance().selectList(startRow,endRow);			
		return mlist;
	}

	
	public int getTotalCount() throws MessageException
	{
		//전체 메세지 레코드 수를 얻어와서
		int totalRecCount = MessageDao.getInstance().getTotalCount();
		
		//해당 레코드 수 만큼 전체 페이지 수 구하기 (한페이지당 3개씩)
		/*
		 * 			전체레코드수 				페이지수
		 * 				9						3
		 * 				10						4
		 * 				11						4
		 * 				12						4
		 * 				13						5
		 */
		pageTotalCount = totalRecCount / countPerPage;
		if(totalRecCount % countPerPage > 0) pageTotalCount++;
		
		
		
		//전체 페이지 수를 리턴
		return pageTotalCount;
	}
	
	
	
}
