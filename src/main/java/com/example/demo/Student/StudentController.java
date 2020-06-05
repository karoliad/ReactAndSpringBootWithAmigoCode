package com.example.demo.Student;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.List;
import java.util.UUID;

@RestController
@RequestMapping("api/students")
public class StudentController {

    private final StudentService studentService;

    @Autowired
    public StudentController(StudentService studentService) {
        this.studentService = studentService;
    }


    @GetMapping
    public List<Student> getAllStudents(){
         return studentService.getAllStudents();
    }


    @GetMapping(path="{studentId}/courses")
    public List<StudentCourse> getAllCoursesForStudents(@PathVariable("studentId") UUID studentId){
        System.out.println(studentId);

        return studentService.getAllCoursesForStudent(studentId);
    }


    //siden dette er entry point for objektet fra front end, er det her man bør gjøre valideringen her
    @PostMapping
    public void addNewStudent(@RequestBody @Valid Student student){
        studentService.addNewStudent(student);
    }


}
