package com.example.examination.controller;

import java.math.BigDecimal;
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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.example.examination.entity.Mark;
import com.example.examination.repository.MarkRepository;

@RestController
@RequestMapping("/marks")
@CrossOrigin(origins = "*")
public class MarkController {

    private final MarkRepository markRepository;

    public MarkController(MarkRepository markRepository) {
        this.markRepository = markRepository;
    }


    // ==============================
    // GET ALL MARKS
    // ==============================

    @GetMapping
    public List<Mark> getAllMarks() {
        return markRepository.findAll();
    }


    // ==============================
    // GET MARK BY ID
    // ==============================

    @GetMapping("/{id}")
    public Optional<Mark> getMarkById(@PathVariable int id) {
        return markRepository.findById(id);
    }


    // ==============================
    // INSERT MARK
    // Trigger automatically sets PASS / FAIL
    // ==============================

    @PostMapping
    public Mark addMark(@RequestBody Mark mark) {
        return markRepository.save(mark);
    }


    // ==============================
    // UPDATE MARK
    // Update trigger recalculates PASS / FAIL
    // ==============================

    @PutMapping("/{id}")
    public Mark updateMark(
            @PathVariable int id,
            @RequestBody Mark mark) {

        mark.setMarkId(id);

        return markRepository.save(mark);
    }


    // ==============================
    // DELETE MARK
    // ==============================

    @DeleteMapping("/{id}")
    public String deleteMark(@PathVariable int id) {

        markRepository.deleteById(id);

        return "Mark deleted successfully";
    }


    // ==============================
    // JOIN
    // Student + Subject + Exam + Mark
    // ==============================

    @GetMapping("/details")
    public List<Object[]> getMarkDetails() {

        return markRepository.getMarkDetails();
    }


    // ==============================
    // SUBQUERY
    // Above average students
    // ==============================

    @GetMapping("/above-average")
    public List<Object[]> getAboveAverageStudents() {

        return markRepository.getAboveAverageStudents();
    }


    // ==============================
    // PROCEDURE
    // Enter / Update Marks
    // ==============================

    @PostMapping("/enter")
    public String enterMarks(
            @RequestParam int studentId,
            @RequestParam int examId,
            @RequestParam int marks) {

        markRepository.enterMarks(
                studentId,
                examId,
                marks
        );

        return "Marks entered successfully";
    }


    // ==============================
    // FUNCTION
    // Calculate Total
    // ==============================

    @GetMapping("/total")
    public Integer getTotal(
            @RequestParam int studentId,
            @RequestParam String examName) {

        return markRepository.calculateTotal(
                studentId,
                examName
        );
    }


    // ==============================
    // FUNCTION
    // Calculate Percentage
    // ==============================

    @GetMapping("/percentage")
    public BigDecimal getPercentage(
            @RequestParam int studentId,
            @RequestParam String examName) {

        return markRepository.calculatePercentage(
                studentId,
                examName
        );
    }
}