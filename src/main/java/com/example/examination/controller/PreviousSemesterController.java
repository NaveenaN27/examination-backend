package com.example.examination.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.examination.entity.PreviousSemesterResult;
import com.example.examination.entity.SemesterSummary;
import com.example.examination.repository.PreviousSemesterResultRepository;
import com.example.examination.repository.SemesterSummaryRepository;

@RestController
@RequestMapping("/previous-semesters")
@CrossOrigin(origins = "*")
public class PreviousSemesterController {

    private final PreviousSemesterResultRepository previousSemesterResultRepository;

    private final SemesterSummaryRepository semesterSummaryRepository;

    public PreviousSemesterController(
            PreviousSemesterResultRepository previousSemesterResultRepository,
            SemesterSummaryRepository semesterSummaryRepository) {

        this.previousSemesterResultRepository =
                previousSemesterResultRepository;

        this.semesterSummaryRepository =
                semesterSummaryRepository;
    }

    // =====================================================
    // GET ALL PREVIOUS SEMESTERS FOR ONE STUDENT
    // Semester 1 to Semester 4
    // =====================================================

    @GetMapping("/student/{studentId}")
    public ResponseEntity<Map<String, Object>>
            getStudentPreviousSemesters(
                    @PathVariable Integer studentId) {

        List<PreviousSemesterResult> results =
                previousSemesterResultRepository
                        .findByStudentIdOrderBySemesterAscResultIdAsc(
                                studentId
                        );

        List<SemesterSummary> summaries =
                semesterSummaryRepository
                        .findByStudentIdOrderBySemesterAsc(
                                studentId
                        );

        Map<String, Object> response =
                new HashMap<>();

        response.put(
                "studentId",
                studentId
        );

        response.put(
                "results",
                results
        );

        response.put(
                "summaries",
                summaries
        );

        return ResponseEntity.ok(response);
    }

    // =====================================================
    // GET ONE PARTICULAR SEMESTER
    // Example: Student 1 - Semester 4
    // =====================================================

    @GetMapping(
        "/student/{studentId}/semester/{semester}"
    )
    public ResponseEntity<Map<String, Object>>
            getStudentSemesterResult(
                    @PathVariable Integer studentId,
                    @PathVariable Integer semester) {

        Map<String, Object> response =
                new HashMap<>();

        // Only previous semesters allowed
        if (semester < 1 || semester > 4) {

            response.put(
                    "success",
                    false
            );

            response.put(
                    "message",
                    "Semester must be between 1 and 4"
            );

            return ResponseEntity
                    .badRequest()
                    .body(response);
        }

        List<PreviousSemesterResult> results =
                previousSemesterResultRepository
                        .findByStudentIdAndSemesterOrderByResultIdAsc(
                                studentId,
                                semester
                        );

        Optional<SemesterSummary> summary =
                semesterSummaryRepository
                        .findByStudentIdAndSemester(
                                studentId,
                                semester
                        );

        response.put(
                "success",
                true
        );

        response.put(
                "studentId",
                studentId
        );

        response.put(
                "semester",
                semester
        );

        response.put(
                "results",
                results
        );

        response.put(
                "summary",
                summary.orElse(null)
        );

        return ResponseEntity.ok(response);
    }
}