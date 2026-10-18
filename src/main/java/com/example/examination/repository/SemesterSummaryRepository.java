package com.example.examination.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import com.example.examination.entity.SemesterSummary;


public interface SemesterSummaryRepository
        extends JpaRepository<SemesterSummary, Integer> {

    List<SemesterSummary>
            findByStudentIdOrderBySemesterAsc(
                    Integer studentId
            );

    Optional<SemesterSummary>
            findByStudentIdAndSemester(
                    Integer studentId,
                    Integer semester
            );
}