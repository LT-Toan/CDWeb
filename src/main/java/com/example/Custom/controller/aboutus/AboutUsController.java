package com.example.Custom.controller.aboutus;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AboutUsController {

    @GetMapping("/aboutus")
    public String contactPage() {
        return "home/aboutus"; // Spring sẽ tìm file contact.jsp trong /WEB-INF/views/contact.jsp
    }
}
