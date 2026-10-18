package com.example.examination.repository;

import java.math.BigDecimal;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.jpa.repository.query.Procedure;
import org.springframework.data.repository.query.Param;

import com.example.examination.entity.Mark;

public interface MarkRepository extends JpaRepository<Mark, Integer> {

    // JOIN
    // Student + Subject + Exam + Marks details
    @Query(value = """
            SELECT
                st.student_name,
                st.department,
                s.subject_name,
                e.exam_name,
                m.marks_obtained,
                m.result_status
            FROM marks m
            JOIN students st
                ON m.student_id = st.student_id
            JOIN exams e
                ON m.exam_id = e.exam_id
            JOIN subjects s
                ON e.subject_id = s.subject_id
            ORDER BY st.student_id,
                     s.subject_name,
                     e.exam_date
            """,
            nativeQuery = true)
    List<Object[]> getMarkDetails();


    // SUBQUERY
    // Above average students
    @Query(value = """
            SELECT
                st.student_name,
                st.department,
                s.subject_name,
                e.exam_name,
                m.marks_obtained
            FROM marks m
            JOIN students st
                ON m.student_id = st.student_id
            JOIN exams e
                ON m.exam_id = e.exam_id
            JOIN subjects s
                ON e.subject_id = s.subject_id
            WHERE m.marks_obtained > (
                SELECT AVG(m2.marks_obtained)
                FROM marks m2
                JOIN exams e2
                    ON m2.exam_id = e2.exam_id
                WHERE e2.subject_id = e.subject_id
                  AND e2.exam_name = e.exam_name
            )
            ORDER BY s.subject_name,
                     e.exam_name,
                     m.marks_obtained DESC
            """,
            nativeQuery = true)
    List<Object[]> getAboveAverageStudents();


    // PROCEDURE
    @Procedure(procedureName = "enter_marks")
    void enterMarks(
            @Param("p_student_id") int studentId,
            @Param("p_exam_id") int examId,
            @Param("p_marks") int marks);


    // FUNCTION - TOTAL
    @Query(value =
            "SELECT calculate_total(:studentId, :examName)",
            nativeQuery = true)
    Integer calculateTotal(
            @Param("studentId") int studentId,
            @Param("examName") String examName);


    // FUNCTION - PERCENTAGE
    @Query(value =
            "SELECT calculate_percentage(:studentId, :examName)",
            nativeQuery = true)
    BigDecimal calculatePercentage(
            @Param("studentId") int studentId,
            @Param("examName") String examName);
}