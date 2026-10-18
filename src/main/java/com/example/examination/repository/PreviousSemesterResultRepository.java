package com.example.examination.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import com.example.examination.entity.PreviousSemesterResult;

public interface PreviousSemesterResultRepository
        extends JpaRepository<PreviousSemesterResult, Integer> {

    List<PreviousSemesterResult>
            findByStudentIdOrderBySemesterAscResultIdAsc(
                    Integer studentId
            );

    List<PreviousSemesterResult>
            findByStudentIdAndSemesterOrderByResultIdAsc(
                    Integer studentId,
                    Integer semester
            );
}