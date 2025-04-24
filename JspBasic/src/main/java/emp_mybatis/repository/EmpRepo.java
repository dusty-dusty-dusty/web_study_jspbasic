package emp_mybatis.repository;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import emp_mybatis.model.EmpVO;
import mybatis.guest.model.Comment;

public class EmpRepo {
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
	
	//-------------------------------
	// 연결객체
	//		JDBC : connection
	//		Mybatis : SqlSession 
	public List<EmpVO> selectEmp() {
		SqlSession sess = getSqlSessionFactory().openSession();
		try {
			List<EmpVO>result = sess.selectList("EmpMapper.selectEmp");
			
			return result;
		}finally {
			sess.close();
		}
	}
	
	public void insertEmp(EmpVO vo) {
		SqlSession sess = getSqlSessionFactory().openSession();
		try {
			sess.insert("EmpMapper.insertEmp", vo);
			sess.commit();
		}finally {
			sess.close();
		}
	}
	
	public EmpVO viewEmp(int empno) {
		System.out.println("[veiwEMP 인자]"+ empno);
		SqlSession sess = getSqlSessionFactory().openSession();
		try {
			EmpVO result = sess.selectOne("EmpMapper.selectEmpByPK", empno);
			
			System.out.println("[viewEmp 리턴값]" + result.toString());
			
			return result;
		}finally {
			sess.close();
		}
	}
	
	public void modifyEmp(EmpVO vo) {
		SqlSession sess = getSqlSessionFactory().openSession();
		try {
			sess.delete("EmpMapper.modifyEmp", vo);
			sess.commit();
		} finally {
			sess.close();
		}
	}
	
	public void deleteEmp(int empno) {
		SqlSession sess = getSqlSessionFactory().openSession();
		try {
			sess.delete("EmpMapper.deleteEmp", empno);
			sess.commit();
		} finally {
			
		}
		
	}
	
	
}
