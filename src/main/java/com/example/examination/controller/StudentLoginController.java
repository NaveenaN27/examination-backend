package com.example.examination.controller;

import java.util.HashMap;
import java.util.Map;
import java.util.Optional;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.examination.entity.StudentLogin;
import com.example.examination.repository.StudentLoginRepository;

@RestController
@RequestMapping("/student-login")
@CrossOrigin(origins = "*")
public class StudentLoginController {

    private final StudentLoginRepository studentLoginRepository;

    public StudentLoginController(
            StudentLoginRepository studentLoginRepository) {

        this.studentLoginRepository = studentLoginRepository;
    }

    // =========================================
    // STUDENT LOGIN
    // =========================================

    @PostMapping
    public ResponseEntity<Map<String, Object>> login(
            @RequestBody Map<String, String> loginRequest) {

        String username = loginRequest.get("username");
        String password = loginRequest.get("password");

        Map<String, Object> response = new HashMap<>();

        // Empty field validation
        if (username == null || username.trim().isEmpty()
                || password == null || password.trim().isEmpty()) {

            response.put("success", false);
            response.put("message", "Username and password are required");

            return ResponseEntity
                    .badRequest()
                    .body(response);
        }

        Optional<StudentLogin> studentLogin =
                studentLoginRepository.findByUsernameAndPassword(
                        username.trim(),
                        password
                );

        // LOGIN SUCCESS
        if (studentLogin.isPresent()) {

            StudentLogin login = studentLogin.get();

            response.put("success", true);
            response.put("message", "Login successful");
            response.put("studentId", login.getStudentId());
            response.put("username", login.getUsername());

            return ResponseEntity.ok(response);
        }

        // LOGIN FAILED
        response.put("success", false);
        response.put("message", "Invalid username or password");

        return ResponseEntity
                .status(HttpStatus.UNAUTHORIZED)
                .body(response);
    }
}