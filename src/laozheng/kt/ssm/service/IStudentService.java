package laozheng.kt.ssm.service;

import java.util.List;

import laozheng.kt.ssm.domain.Student;




public interface IStudentService {
	public List<Student> queryAll();
	/**
	 * ͨ��ѧ��id��ѯ��ѧ��
	 * @param ID
	 * @return
	 */
	//public Student getStudentById(int ID);
	//ɾ������
	public void delete(int stu);
}
