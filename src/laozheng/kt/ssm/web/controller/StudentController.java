package laozheng.kt.ssm.web.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import laozheng.kt.ssm.domain.Student;
import laozheng.kt.ssm.mapper.StudentMapper;
import laozheng.kt.ssm.service.IClassesService;
import laozheng.kt.ssm.service.IStudentService;

@Controller
@RequestMapping("/student")
public class StudentController {
	
	
	
	//ע��service��
	@Autowired
	private IStudentService stuService;
	//ע��classService��
	@Autowired
	private IClassesService clsService;
	@RequestMapping("/index")
	public String index(Model model) {
		System.out.println("----------");
		List<Student> lists = stuService.queryAll();
		//model.addAttribute("currentStu",stuService.getStudentById(1));
		model.addAttribute("students", lists);
		return "student/student_list";
	}
	
	/**
	 * ������Ҫ��url�Ĳ�����ͬ
	 * @param id
	 * @return
	 */
	@RequestMapping("/delete")
	public String delete(int id) {
		stuService.delete(id);
		//����service���ɾ������������ɾ��
		return "redirect:/student/index";
	}
	//��������
	@RequestMapping("/add")
	public String add() {
		return "student/student_input";
	}
}
