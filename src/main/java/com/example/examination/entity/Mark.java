package com.example.examination.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "marks")
public class Mark {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "mark_id")
    private int markId;

    @Column(name = "student_id")
    private int studentId;

    @Column(name = "exam_id")
    private int examId;

    @Column(name = "marks_obtained")
    private int marksObtained;

    @Column(name = "result_status")
    private String resultStatus;

    public Mark() {
    }

    public Mark(int markId, int studentId, int examId,
                int marksObtained, String resultStatus) {
        this.markId = markId;
        this.studentId = studentId;
        this.examId = examId;
        this.marksObtained = marksObtained;
        this.resultStatus = resultStatus;
    }

    public int getMarkId() {
        return markId;
    }

    public void setMarkId(int markId) {
        this.markId = markId;
    }

    public int getStudentId() {
        return studentId;
    }

    public void setStudentId(int studentId) {
        this.studentId = studentId;
    }

    public int getExamId() {
        return examId;
    }

    public void setExamId(int examId) {
        this.examId = examId;
    }

    public int getMarksObtained() {
        return marksObtained;
    }

    public void setMarksObtained(int marksObtained) {
        this.marksObtained = marksObtained;
    }

    public String getResultStatus() {
        return resultStatus;
    }

    public void setResultStatus(String resultStatus) {
        this.resultStatus = resultStatus;
    }
}