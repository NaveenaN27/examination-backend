package com.example.examination.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "previous_semester_results")
public class PreviousSemesterResult {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "result_id")
    private Integer resultId;

    @Column(name = "student_id", nullable = false)
    private Integer studentId;

    @Column(name = "semester", nullable = false)
    private Integer semester;

    @Column(name = "course_code", nullable = false)
    private String courseCode;

    @Column(name = "course_name", nullable = false)
    private String courseName;

    @Column(name = "credit", nullable = false)
    private Integer credit;

    @Column(name = "grade_point", nullable = false)
    private Integer gradePoint;

    @Column(name = "grade", nullable = false)
    private String grade;

    @Column(name = "result_status", nullable = false)
    private String resultStatus;

    public PreviousSemesterResult() {
    }

    public PreviousSemesterResult(
            Integer resultId,
            Integer studentId,
            Integer semester,
            String courseCode,
            String courseName,
            Integer credit,
            Integer gradePoint,
            String grade,
            String resultStatus) {

        this.resultId = resultId;
        this.studentId = studentId;
        this.semester = semester;
        this.courseCode = courseCode;
        this.courseName = courseName;
        this.credit = credit;
        this.gradePoint = gradePoint;
        this.grade = grade;
        this.resultStatus = resultStatus;
    }

    public Integer getResultId() {
        return resultId;
    }

    public void setResultId(Integer resultId) {
        this.resultId = resultId;
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

    public String getCourseCode() {
        return courseCode;
    }

    public void setCourseCode(String courseCode) {
        this.courseCode = courseCode;
    }

    public String getCourseName() {
        return courseName;
    }

    public void setCourseName(String courseName) {
        this.courseName = courseName;
    }

    public Integer getCredit() {
        return credit;
    }

    public void setCredit(Integer credit) {
        this.credit = credit;
    }

    public Integer getGradePoint() {
        return gradePoint;
    }

    public void setGradePoint(Integer gradePoint) {
        this.gradePoint = gradePoint;
    }

    public String getGrade() {
        return grade;
    }

    public void setGrade(String grade) {
        this.grade = grade;
    }

    public String getResultStatus() {
        return resultStatus;
    }

    public void setResultStatus(String resultStatus) {
        this.resultStatus = resultStatus;
    }
}