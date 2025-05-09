package com.praveen.service;

import java.util.List;

import com.praveen.model.Student;

public interface StudentService {

	List<Student> getAllStudents();
    Student getStudentById(int sid);
    void saveStudent(Student student);
    void deleteStudentById(int sid);
    void updateStudent(Student student);
    double calculateTotalMarks(Student student);
    double calculatePercentage(Student student);
    String calculateGrade(double percentage);
}

