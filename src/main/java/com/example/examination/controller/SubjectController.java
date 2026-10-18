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

import com.example.examination.entity.Subject;
import com.example.examination.repository.SubjectRepository;

@RestController
@RequestMapping("/subjects")
@CrossOrigin(origins = "*")
public class SubjectController {

    private final SubjectRepository subjectRepository;

    public SubjectController(SubjectRepository subjectRepository) {
        this.subjectRepository = subjectRepository;
    }

    // GET ALL SUBJECTS
    @GetMapping
    public List<Subject> getAllSubjects() {
        return subjectRepository.findAll();
    }

    // GET SUBJECT BY ID
    @GetMapping("/{id}")
    public Optional<Subject> getSubjectById(@PathVariable int id) {
        return subjectRepository.findById(id);
    }

    // GET SUBJECTS BY DEPARTMENT
    @GetMapping("/department/{department}")
    public List<Subject> getSubjectsByDepartment(
            @PathVariable String department) {

        return subjectRepository.getSubjectsByDepartment(department);
    }

    // INSERT SUBJECT
    @PostMapping
    public Subject addSubject(@RequestBody Subject subject) {
        return subjectRepository.save(subject);
    }

    // UPDATE SUBJECT
    @PutMapping("/{id}")
    public Subject updateSubject(
            @PathVariable int id,
            @RequestBody Subject subject) {

        subject.setSubjectId(id);

        return subjectRepository.save(subject);
    }

    // DELETE SUBJECT
    @DeleteMapping("/{id}")
    public String deleteSubject(@PathVariable int id) {

        subjectRepository.deleteById(id);

        return "Subject deleted successfully";
    }
}