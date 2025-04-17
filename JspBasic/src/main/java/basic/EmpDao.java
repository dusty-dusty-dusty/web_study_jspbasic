package basic;

import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.*;
public class EmpDao{
	
	static String driver 	= "oracle.jdbc.driver.OracleDriver";
	static String url 		= "jdbc:oracle:thin:@127.0.0.01:1521:xe";
	static String user 		= "scott";
	static String pass		= "tiger";
	
	private EmpDao() throws Exception{ //생성자함수를 private으로 바꾸면 다른곳에서 생성을 못함 ->같은 클래스 안에서만 부를수있음 
	//1. 드라이버 로딩
		Class.forName(driver);
		   }

	//싱글톤 개념의 기본 : 메모리에 단 하나 올리겠다 
	static EmpDao dao = null; 
	public static EmpDao getInstance() throws Exception { //static 
	if(dao == null) dao = new EmpDao(); //dao가 null인경우에만 dao에 EmpDAO를 생성 
	return dao;
		   }
	
	Connection con = null;
	PreparedStatement ps =null;
	ResultSet rs = null;

	public void insert(EmpVO vo) throws Exception {
		con = DriverManager.getConnection(url, user, pass);
		//2~7
		String sql = "INSERT INTO emp(empno, ename, deptno, job, sal)"
				+ " VALUES( ?, ?, ?, ?, ?)";
		
		
		//4 전송객체 얻어오기 PrepareStatement
		ps = con.prepareStatement(sql);
		//sql문장의 ? 지정
		ps.setInt( 1, vo.getEmpno());
		ps.setString( 2, vo.getEname());
		ps.setInt( 3, vo.getDeptno());
		ps.setString( 4, vo.getJob());
		ps.setInt( 5, vo.getSal());
		//5 전송 executeUpdate()
		int result = ps.executeUpdate();
		System.out.println(result+"행을 수행하였습니다.");try { 
			con.close();
			ps.close();
		}catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
	/*
	 * 넘겨받은 user/pass를 emp테이블의 ename/empno를 비교
	 */
	public boolean loginCheck(EmpVO vo) throws Exception{
		boolean check = false;
		//2.연결객체
		con = DriverManager.getConnection(url, user, pass);
		//3.sql문장
		String sql = "SELECT * FROM emp WHERE ename=? AND empno=?";
		//4.
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1, vo.getEname());
		ps.setInt(2, vo.getEmpno());
		//5.
		if( rs.next()) {
			check = true;
		}
		
		return check;
	}
	
	public EmpVO selectByPK (int sabun) throws Exception {
		EmpVO result = new EmpVO();
		try {
		//2 연결객체
		con = DriverManager.getConnection(url, user, pass);
		
		//3. sql 문장
		/*
		 * [해당 사원의 정보를 검색]
		 */
		
		String sql = "SELECT * FROM emp WHERE empno=?";
		
		//4전송객체
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setInt(1, sabun);
		
		
		//5. 전송
		ResultSet rs = ps.executeQuery();
		//[6. 결과 받아처리]
		
		if(rs.next()) {
			result.setEname(rs.getString("ename"));
			result.setSal(rs.getInt("sal"));
			result.setJob(rs.getString("job"));
			result.setDeptno(rs.getInt("deptno"));	
		}
		return result;
		}finally {
			//7닫기
			try {con.close();} catch(Exception ex) {} 
		} 
		
	
		
		
	}
	
	
	
	
}




