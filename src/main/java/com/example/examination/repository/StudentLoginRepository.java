package com.example.examination.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;


import com.example.examination.entity.StudentLogin;


public interface StudentLoginRepository
        extends JpaRepository<StudentLogin, Integer> {

    Optional<StudentLogin> findByUsernameAndPassword(
            String username,
            String password
    );
}