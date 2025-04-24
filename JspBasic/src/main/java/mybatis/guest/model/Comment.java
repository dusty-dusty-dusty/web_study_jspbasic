package mybatis.guest.model;

public class Comment {
	
	int 	commentNo;
	String	userId;
	String commentContent;
	String regDate;
	
	
	public int getCommentNo() {
		return commentNo;
	}
	public void setCommentNo(int commentNo) {
		this.commentNo = commentNo;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getCommentContent() {
		return commentContent;
	}
	public void setCommentContent(String commentContent) {
		this.commentContent = commentContent;
	}
	public String getRegDate() {
		return regDate;
	}
	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}
	@Override
	public String toString() {
		return "Comment [commentNo=" + commentNo + ", userId=" + userId + ", commentContent=" + commentContent
				+ ", regDate=" + regDate + "]";
	}
	
	
	
	
}
