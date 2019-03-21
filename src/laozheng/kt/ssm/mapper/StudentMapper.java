package laozheng.kt.ssm.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import laozheng.kt.ssm.domain.Student;

public interface StudentMapper {
	public List<Student> queryAll();
	//public Student getStudentById(@Param("ID")int ID);
	/**
	 * 此处的id要和mapper文件中的id对应
	 * @param id
	 */
	public void delete(@Param("id")int id);
}
