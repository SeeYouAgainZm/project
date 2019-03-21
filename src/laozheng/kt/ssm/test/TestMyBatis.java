package laozheng.kt.ssm.test;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import laozheng.kt.ssm.domain.Student;
import laozheng.kt.ssm.mapper.StudentMapper;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:applicationContext.xml")
public class TestMyBatis {
	@Autowired
	StudentMapper mapper;
	@Test
	public void testMyBatis() throws Exception {
		List<Student> lists = mapper.queryAll();
		for (Student student : lists) {
			System.out.println(student);
		}
	}
}
