package com.example.Custom.controller.admin;

import com.example.Custom.service.OrderService;
import com.example.Custom.service.ProductService;
import com.example.Custom.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Map;

@Controller
@RequestMapping("/admin")
public class DashboardController {
    @Autowired
    private ProductService productService;
    @Autowired
    private OrderService orderService;
    @Autowired
    private UserService userService;



    @GetMapping("/dashboard")
    public String showDashboard(Model model) {
        long productCount = productService.countAllProducts();
        long orderCount = orderService.getTotalOrders();
        long userCount = userService.getTotalUsers();
        long userNormalCount = userService.getTotalNormalUsers();
        long userAdminCount = userService.getTotalAdmins();
        double totalRevenue = orderService.getTotalRevenue();

        model.addAttribute("productCount", productCount);
        model.addAttribute("orderCount", orderCount);
        model.addAttribute("userCount", userCount);
        model.addAttribute("userNormalCount", userNormalCount);
        model.addAttribute("userAdminCount", userAdminCount);
        model.addAttribute("totalRevenue", totalRevenue);

        Map<String, Double> revenuePerDay = orderService.getRevenuePerDayThisWeek();
        model.addAttribute("revenuePerDay", revenuePerDay);

        Map<String, Integer> orderPerMonth = orderService.getOrderCountPerMonth();
        model.addAttribute("orderPerMonth", orderPerMonth);

        return "admin/Dashboard/index";
    }

}
