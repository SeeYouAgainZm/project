package laozheng.kt.ssm.service;

import java.util.List;

import laozheng.kt.ssm.domain.Student;




public interface IStudentService {
	public List<Student> queryAll();
	/**
	 * 通过学生id查询出学生
	 * @param ID
	 * @return
	 */
	//public Student getStudentById(int ID);
	//删除方法
	public void delete(int stu);
}
