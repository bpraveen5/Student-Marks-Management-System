package com.praveen.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.praveen.model.Student;
import com.praveen.service.StudentService;
@Controller
public class StudentController {

	@Autowired private StudentService service;

	 	@RequestMapping("/home")
		public String homePage() {
			return "home";
		}
	    @GetMapping("/student-form")
	    public String showAddForm(Model model) {
	        model.addAttribute("student", new Student());
	        return "student-form";
	    }

	    @PostMapping("/save")
	    public String saveStudent(@ModelAttribute("student") Student student) {
	        service.saveStudent(student);
	        return "redirect:/student-list";
	    }
	    
	    @GetMapping("/student-list")
	    public String listStudents(Model model) {
	        model.addAttribute("students", service.getAllStudents());
	        return "student-list";
	    }

	    @GetMapping("/updateForm{sid}")
	    public String showUpdateForm(@RequestParam("studentId") int sid, Model model) {
	        model.addAttribute("student", service.getStudentById(sid));
	        return "student-form";
	    }

	    @GetMapping("/delete{sid}")
	    public String deleteStudent(@RequestParam("studentId") int sid) {
	        service.deleteStudentById(sid);
	        return "redirect:/student-list";
	    }
}

