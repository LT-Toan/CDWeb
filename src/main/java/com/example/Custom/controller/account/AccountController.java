package com.example.Custom.controller.account;

import java.util.Optional;
import jakarta.servlet.http.HttpSession;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import com.example.Custom.domain.User;
import com.example.Custom.service.UserService;
@Controller
@RequestMapping("/account")
public class AccountController {
    private final UserService userService;
    private final PasswordEncoder passwordEncoder;

    public AccountController(UserService userService, PasswordEncoder passwordEncoder) {
        this.userService = userService;
        this.passwordEncoder = passwordEncoder;
    }

    @GetMapping("/profile")
    public String viewProfile(Model model, HttpSession session) {
        Long userId = (Long) session.getAttribute("id");
        Optional<User> user = userService.handleGetById(userId);
        if (user.isPresent()) {
            model.addAttribute("user", user.get());
            return "home/profile";
        }
        return "redirect:/";
    }

    @PostMapping("/update")
    public String updateProfile(@ModelAttribute User user, @RequestParam("newPassword") String newPassword) {
        Optional<User> existingUser = userService.handleGetById(user.getId());
        if (existingUser.isPresent()) {
            User current = existingUser.get();
            current.setFullName(user.getFullName());
            current.setEmail(user.getEmail());

            if (newPassword != null && !newPassword.isEmpty()) {
                current.setPassword(passwordEncoder.encode(newPassword));
            }

            userService.handleUpdateUser(current);
        }
        return "redirect:/account/profile?success";
    }
}
