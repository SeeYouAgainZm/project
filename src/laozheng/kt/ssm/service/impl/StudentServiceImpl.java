package laozheng.kt.ssm.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import laozheng.kt.ssm.domain.Student;
import laozheng.kt.ssm.mapper.StudentMapper;
import laozheng.kt.ssm.service.IStudentService;
@Service
public class StudentServiceImpl implements IStudentService{
	@Autowired
	StudentMapper mapper;
	@Override
	public List<Student> queryAll() {
		// TODO Auto-generated method stub
		return mapper.queryAll();
	}
	@Override
	public void delete(int stu) {
		mapper.delete(stu);
		
	}
	
	/*@Override
	public Student getStudentById(int ID) {
		// TODO Auto-generated method stub
		return mapper.getStudentById(ID);
	}
	*/
}
