package com.example.demo;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class IndexController {
	
	@Autowired
	StudentDB studentDB;
	//public ModelAndView index(@requestParam("name") String st
	@RequestMapping("webapp")
		public ModelAndView home() {
			ModelAndView mv = new ModelAndView();
			mv.setViewName("welcome.jsp");
			return mv;
		}
	@RequestMapping("addStudent")
	public ModelAndView adduser(Student stud) {
		System.out.println(stud.getStudentName());
		System.out.println(stud.getRollNo());
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("studentDetails", stud);
		mv.setViewName("added.jsp");
		studentDB.save(stud);
		return mv;		
	}
	
	@RequestMapping("viewStudent")
	public ModelAndView display(Student stud) {
		Optional<Student> op = studentDB.findById(stud.getRollNo());
		Student student = op.get();
		ModelAndView mv = new ModelAndView();
		mv.addObject("studentDetails",student);
		mv.setViewName("display.jsp");
		return mv;
	}
	@RequestMapping("deleteStudent")
	public ModelAndView deleteuser(Student stud) {
		studentDB.deleteById(stud.getRollNo());
		ModelAndView mv = new ModelAndView();
		mv.addObject("studentDetails",stud);
		mv.setViewName("delete.jsp");
		return mv;
	}
	@RequestMapping("updateStudent")
	public ModelAndView updateuser(Student stud) {
		Optional<Student> existingStudentOptional = studentDB.findById(stud.getRollNo());
		ModelAndView mv = new ModelAndView();
		 if (existingStudentOptional.isPresent()) {
			 mv.addObject("studentDetails", stud);
				mv.setViewName("update.jsp");
				studentDB.save(stud);
	        } else {
	        	 mv.addObject("warningMessage", "Student rollNo not exists");
	             mv.setViewName("warning.jsp");
		}
		return mv;
	}
	@RequestMapping("Button")
	public ModelAndView openedit() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("edit.jsp");
		return mv;	
	}
}
 	