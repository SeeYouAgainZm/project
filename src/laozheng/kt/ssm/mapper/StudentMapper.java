package laozheng.kt.ssm.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import laozheng.kt.ssm.domain.Student;

public interface StudentMapper {
	public List<Student> queryAll();
	//public Student getStudentById(@Param("ID")int ID);
	/**
	 * �˴���idҪ��mapper�ļ��е�id��Ӧ
	 * @param id
	 */
	public void delete(@Param("id")int id);
}
