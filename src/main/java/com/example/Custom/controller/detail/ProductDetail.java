package com.example.Custom.controller.detail;

import com.example.Custom.domain.dto.ProductDTO;
import com.example.Custom.service.ProductService;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class ProductDetail {

    @Autowired
    private ProductService productService;

    @GetMapping("/detail/{id}")
    public String productDetailPage(@PathVariable("id") Long id, Model model) {
        ProductDTO product = productService.getProductById(id);
        model.addAttribute("product", product); // truyền sang JSP
        model.addAttribute("productList", productService.getAllProducts());
        return "home/productdetail";
    }

    @PostMapping("/detail/addtocart/{id}")
    public String addProductToCart(@PathVariable("id") Long id,
                                   @RequestParam("quantity") int quantity,
                                   HttpServletRequest request) {
        HttpSession session = request.getSession(false);
        if (session == null) {
            return "redirect:/login";
        }

        String email = (String) session.getAttribute("email");
        if (email == null) {
            return "redirect:/login";
        }

        try {
            productService.handleAddToProduct(email, id, quantity, session);
        } catch (Exception e) {
            e.printStackTrace();
            // Có thể thêm xử lý hiển thị lỗi ở đây nếu muốn
        }

        return "redirect:/cart";
    }



}
