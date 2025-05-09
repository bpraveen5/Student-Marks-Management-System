package com.praveen.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.praveen.model.Student;
import com.praveen.repo.StudentRepo;
@Service
public class StudentServiceImp implements StudentService {

	@Autowired StudentRepo repo;
	@Override
	public List<Student> getAllStudents() {
		return repo.findAll();
	}

	@Override
	public Student getStudentById(int sid) {
		return repo.findById(sid).orElse(null);
	}

	@Override
	public void saveStudent(Student student) {
		// Calculate total marks, percentage, and grade before saving
        double totalMarks = calculateTotalMarks(student);
        double percentage = calculatePercentage(student);
        String grade = calculateGrade(percentage);

        student.setTotalMarks(totalMarks);
        student.setPercentage(percentage);
        student.setGrade(grade);
        
        repo.save(student);
	}

	@Override
	public void deleteStudentById(int sid) {
		repo.deleteById(sid);
	}
	@Override
	public void updateStudent(Student student) {
        // Check if student exists before updating
        Optional<Student> existingStudent = repo.findById(student.getSid());
        if (existingStudent.isPresent()) {
            Student updatedStudent = existingStudent.get();
            updatedStudent.setFirstName(student.getFirstName());
            updatedStudent.setLastName(student.getLastName());
            updatedStudent.setSub1(student.getSub1());
            updatedStudent.setSub2(student.getSub2());
            updatedStudent.setSub3(student.getSub3());
            
            // Recalculate total marks, percentage, and grade
            double totalMarks = calculateTotalMarks(updatedStudent);
            double percentage = calculatePercentage(updatedStudent);
            String grade = calculateGrade(percentage);
            
            updatedStudent.setTotalMarks(totalMarks);
            updatedStudent.setPercentage(percentage);
            updatedStudent.setGrade(grade);

            repo.save(updatedStudent);  // Save updated student data
        } else {
            // Handle error if student doesn't exist
            throw new RuntimeException("Student not found for id " + student.getSid());
        }
	}
	


	@Override
	public double calculateTotalMarks(Student student) {
		return student.getSub1() + student.getSub2() + student.getSub3();
	}

	@Override
	public double calculatePercentage(Student student) {
		double totalMarks = calculateTotalMarks(student);
        return (totalMarks / 300) * 100;
    }

	@Override
	public String calculateGrade(double percentage) {
		if (percentage >= 90) 
			return "A";
        else if (percentage >= 75)
        	return "B";
        else if (percentage >= 50) 
        	return "C";
        else 
        	return "F";
	}
	

}
