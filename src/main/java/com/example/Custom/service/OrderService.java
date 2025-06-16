package com.example.Custom.service;

import java.time.DayOfWeek;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.Custom.domain.Cart;
import com.example.Custom.domain.Order;
import com.example.Custom.domain.User;
import com.example.Custom.domain.dto.CheckoutCartDTO;
import com.example.Custom.domain.dto.OrderDTO;
import com.example.Custom.repository.CartRepository;
import com.example.Custom.repository.OrderRepository;
import com.example.Custom.repository.ProductRepository;

@Service
public class OrderService {

    private final OrderRepository orderRepository;
    private final ProductRepository productRepository;
    private final CartRepository cartRepository;

    public OrderService(OrderRepository orderRepository, ProductRepository productRepository, CartRepository cartRepository) {
        this.orderRepository = orderRepository;
        this.productRepository = productRepository;
        this.cartRepository = cartRepository;
    }

    @Transactional
    public Order createOrderFromDTO(OrderDTO orderDTO, CheckoutCartDTO checkoutCart, User user) {
        Cart cart = cartRepository.findById(checkoutCart.getCartId())
                        .orElseThrow(() -> new RuntimeException("Cart not found"));

        Order order = new Order();
        order.setReceiverName(orderDTO.getReceiverName());
        order.setReceiverAddress(orderDTO.getReceiverAddress());
        order.setReceiverPhone(orderDTO.getReceiverPhone());
        order.setReceiverNote(orderDTO.getReceiverNote());
        order.setCreatedDate(LocalDateTime.now());
        order.setUser(user);
        // order.setCart(cart);
        order.setStatus("PENDING");

        double totalPrice = 0;
        for (CheckoutCartDTO.CheckoutCartItemDTO itemDTO : checkoutCart.getCartItems()) {
            totalPrice += itemDTO.getPrice() * itemDTO.getQuantity();
        }
        order.setTotalPrice(totalPrice);

        return orderRepository.save(order);
    }

    public List<Order> getOrderByUser(User user) {
        return orderRepository.findByUser(user);
    }

    public long getTotalOrders() {
        return orderRepository.count();
    }

    public double getTotalRevenue() {
        List<Order> orders = orderRepository.findAll();
        return orders.stream()
                .mapToDouble(Order::getTotalPrice)
                .sum();
    }

    //bieu do doanh thu
    public Map<String, Double> getRevenuePerDayThisWeek() {
        Map<String, Double> revenueMap = new LinkedHashMap<>();
        LocalDate today = LocalDate.now();
        DayOfWeek todayDow = today.getDayOfWeek();
        LocalDate monday = today.minusDays(todayDow.getValue() - DayOfWeek.MONDAY.getValue());

        for (int i = 0; i < 7; i++) {
            LocalDate day = monday.plusDays(i);
            LocalDateTime startOfDay = day.atStartOfDay();
            LocalDateTime endOfDay = day.atTime(LocalTime.MAX);

            Double revenue = orderRepository.sumTotalPriceByCreatedDateBetween(startOfDay, endOfDay);
            if (revenue == null) revenue = 0.0;

            String dayLabel = switch (i) {
                case 0 -> "T2";
                case 1 -> "T3";
                case 2 -> "T4";
                case 3 -> "T5";
                case 4 -> "T6";
                case 5 -> "T7";
                case 6 -> "CN";
                default -> "N/A";
            };
            revenueMap.put(dayLabel, revenue);
        }

        return revenueMap;
    }

    //bieu do dơn hang theo thang
    public Map<String, Integer> getOrderCountPerMonth() {
        Map<String, Integer> result = new LinkedHashMap<>();
        int year = LocalDate.now().getYear();

        for (int month = 1; month <= 12; month++) {
            String label = "T" + month;
            int count = orderRepository.countByMonth(month, year);
            result.put(label, count);
        }

        return result;
    }

    public List<Order> getAllOrder() {
        return orderRepository.findAll();
    }




}