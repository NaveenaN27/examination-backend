package com.example.examination.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.example.examination.entity.Student;

public interface StudentRepository extends JpaRepository<Student, Integer> {

    @Query(value = "SELECT * FROM students WHERE department = :department",
           nativeQuery = true)
    List<Student> getStudentsByDepartment(
            @Param("department") String department);
}