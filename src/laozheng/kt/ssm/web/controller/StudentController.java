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
	
	
	
	//注入service层
	@Autowired
	private IStudentService stuService;
	//注入classService层
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
	 * 参数需要和url的参数相同
	 * @param id
	 * @return
	 */
	@RequestMapping("/delete")
	public String delete(int id) {
		stuService.delete(id);
		//调用service层的删除方法把数据删除
		return "redirect:/student/index";
	}
	//新增方法
	@RequestMapping("/add")
	public String add() {
		return "student/student_input";
	}
}
