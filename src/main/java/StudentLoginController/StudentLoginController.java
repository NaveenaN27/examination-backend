package StudentLoginController;

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

    @PostMapping
    public ResponseEntity<Map<String, Object>> login(
            @RequestBody Map<String, String> request) {

        Map<String, Object> response = new HashMap<>();

        String username = request.get("username");
        String password = request.get("password");

        if (username == null ||
            username.trim().isEmpty() ||
            password == null ||
            password.trim().isEmpty()) {

            response.put("success", false);
            response.put(
                    "message",
                    "Username and password are required"
            );

            return ResponseEntity
                    .badRequest()
                    .body(response);
        }

        Optional<StudentLogin> login =
                studentLoginRepository
                        .findByUsernameAndPassword(
                                username.trim(),
                                password.trim()
                        );

        if (login.isPresent()) {

            StudentLogin studentLogin = login.get();

            response.put("success", true);
            response.put(
                    "message",
                    "Login successful"
            );
            response.put(
                    "studentId",
                    studentLogin.getStudentId()
            );
            response.put(
                    "username",
                    studentLogin.getUsername()
            );

            return ResponseEntity.ok(response);
        }

        response.put("success", false);
        response.put(
                "message",
                "Invalid username or password"
        );

        return ResponseEntity
                .status(HttpStatus.UNAUTHORIZED)
                .body(response);
    }
}