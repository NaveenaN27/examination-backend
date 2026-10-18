package com.example.examination.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.example.examination.entity.Subject;

public interface SubjectRepository extends JpaRepository<Subject, Integer> {

    @Query(value = "SELECT * FROM subjects WHERE department = :department",
           nativeQuery = true)
    List<Subject> getSubjectsByDepartment(
            @Param("department") String department);
}