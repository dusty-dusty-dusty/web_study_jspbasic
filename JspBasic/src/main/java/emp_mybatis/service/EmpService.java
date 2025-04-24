package emp_mybatis.service;

import java.util.HashMap;
import java.util.List;
import emp_mybatis.model.EmpVO;
import emp_mybatis.repository.EmpRepo;
import mybatis.guest.model.Comment;

public class EmpService {
	private static EmpService service;
	
	private EmpService() {}
	public static EmpService getInstance(){
		if( service == null) service = new EmpService();
		return service;
	}
	
	// Model == Repository
	private EmpRepo repo =	new EmpRepo();

	public List<EmpVO> selectEmp() {
		List<EmpVO> result = repo.selectEmp();
		return result;
	}
	
	public void insertEmp(EmpVO vo) {
		repo.insertEmp(vo);
	}
	
	public EmpVO viewEmp(int empno) {
		EmpVO result = repo.viewEmp(empno);
		return result;
	}
	
	public void modifyEmp(EmpVO vo) {
	    repo.modifyEmp(vo); 
	}
	
	public void deleteEmp(int empno) {
		repo.deleteEmp(empno);
	}
	
	
}
