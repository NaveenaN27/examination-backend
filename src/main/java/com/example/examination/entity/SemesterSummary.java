package com.example.examination.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "semester_summary")
public class SemesterSummary {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "summary_id")
    private Integer summaryId;

    @Column(name = "student_id", nullable = false)
    private Integer studentId;

    @Column(name = "semester", nullable = false)
    private Integer semester;

    @Column(name = "exam_session", nullable = false)
    private String examSession;

    @Column(name = "credit_registered", nullable = false)
    private Integer creditRegistered;

    @Column(name = "credit_completed", nullable = false)
    private Integer creditCompleted;

    @Column(name = "sgpa", nullable = false)
    private Double sgpa;

    @Column(name = "cgpa", nullable = false)
    private Double cgpa;

    public SemesterSummary() {
    }

    public SemesterSummary(
            Integer summaryId,
            Integer studentId,
            Integer semester,
            String examSession,
            Integer creditRegistered,
            Integer creditCompleted,
            Double sgpa,
            Double cgpa) {

        this.summaryId = summaryId;
        this.studentId = studentId;
        this.semester = semester;
        this.examSession = examSession;
        this.creditRegistered = creditRegistered;
        this.creditCompleted = creditCompleted;
        this.sgpa = sgpa;
        this.cgpa = cgpa;
    }

    public Integer getSummaryId() {
        return summaryId;
    }

    public void setSummaryId(Integer summaryId) {
        this.summaryId = summaryId;
    }

    public Integer getStudentId() {
        return studentId;
    }

    public void setStudentId(Integer studentId) {
        this.studentId = studentId;
    }

    public Integer getSemester() {
        return semester;
    }

    public void setSemester(Integer semester) {
        this.semester = semester;
    }

    public String getExamSession() {
        return examSession;
    }

    public void setExamSession(String examSession) {
        this.examSession = examSession;
    }

    public Integer getCreditRegistered() {
        return creditRegistered;
    }

    public void setCreditRegistered(Integer creditRegistered) {
        this.creditRegistered = creditRegistered;
    }

    public Integer getCreditCompleted() {
        return creditCompleted;
    }

    public void setCreditCompleted(Integer creditCompleted) {
        this.creditCompleted = creditCompleted;
    }

    public Double getSgpa() {
        return sgpa;
    }

    public void setSgpa(Double sgpa) {
        this.sgpa = sgpa;
    }

    public Double getCgpa() {
        return cgpa;
    }

    public void setCgpa(Double cgpa) {
        this.cgpa = cgpa;
    }
}