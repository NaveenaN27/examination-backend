package com.example.examination.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.examination.entity.Exam;
import com.example.examination.repository.ExamRepository;

@RestController
@RequestMapping("/exams")
@CrossOrigin(origins = "*")
public class ExamController {

    private final ExamRepository examRepository;

    public ExamController(ExamRepository examRepository) {
        this.examRepository = examRepository;
    }

    // GET ALL EXAMS
    @GetMapping
    public List<Exam> getAllExams() {
        return examRepository.findAll();
    }

    // GET EXAM BY ID
    @GetMapping("/{id}")
    public Optional<Exam> getExamById(@PathVariable int id) {
        return examRepository.findById(id);
    }

    // GET EXAMS BY DEPARTMENT
    @GetMapping("/department/{department}")
    public List<Exam> getExamsByDepartment(
            @PathVariable String department) {

        return examRepository.getExamsByDepartment(department);
    }

    // GET EXAMS BY NAME
    @GetMapping("/name/{examName}")
    public List<Exam> getExamsByName(
            @PathVariable String examName) {

        return examRepository.getExamsByName(examName);
    }

    // INSERT EXAM
    @PostMapping
    public Exam addExam(@RequestBody Exam exam) {
        return examRepository.save(exam);
    }

    // UPDATE EXAM
    @PutMapping("/{id}")
    public Exam updateExam(
            @PathVariable int id,
            @RequestBody Exam exam) {

        exam.setExamId(id);

        return examRepository.save(exam);
    }

    // DELETE EXAM
    @DeleteMapping("/{id}")
    public String deleteExam(@PathVariable int id) {

        examRepository.deleteById(id);

        return "Exam deleted successfully";
    }
}