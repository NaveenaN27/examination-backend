package com.example.examination.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.example.examination.entity.Exam;

public interface ExamRepository extends JpaRepository<Exam, Integer> {

    @Query(value = """
            SELECT e.*
            FROM exams e
            JOIN subjects s
            ON e.subject_id = s.subject_id
            WHERE s.department = :department
            """,
            nativeQuery = true)
    List<Exam> getExamsByDepartment(
            @Param("department") String department);


    @Query(value = """
            SELECT *
            FROM exams
            WHERE exam_name = :examName
            """,
            nativeQuery = true)
    List<Exam> getExamsByName(
            @Param("examName") String examName);
}