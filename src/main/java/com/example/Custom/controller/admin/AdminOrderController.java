package com.example.Custom.controller.admin;

import com.example.Custom.domain.Order;
import com.example.Custom.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

@Controller
public class AdminOrderController {

    @Autowired
    private OrderService orderService;
    public AdminOrderController(OrderService orderService) {
        this.orderService = orderService;
    }

    @GetMapping("/admin/order")
    public String viewAllOrders(Model model) {
        List<Order> orders = orderService.getAllOrder();
        model.addAttribute("orders", orders);
        return "admin/order/show";
    }


}
