package com.example.Custom.controller.promocode;

import com.example.Custom.service.PromocodeService;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.math.BigDecimal;

@Controller
public class PromocodeController {

    @Autowired
    private PromocodeService promocodeService;

    @PostMapping("/apply-promocode")
    public String applyPromocode(@RequestParam("promocode") String code, HttpSession session) {
        String trimmedCode = code.trim().toUpperCase();

        if (trimmedCode.isEmpty()) {
            session.setAttribute("discountAmount", BigDecimal.ZERO);
            session.setAttribute("promoError", "Vui lòng nhập mã giảm giá.");
            session.removeAttribute("appliedCode");
            return "redirect:/cart";
        }

        BigDecimal discount = promocodeService.getDiscountByCode(trimmedCode);

        if (discount != null && discount.compareTo(BigDecimal.ZERO) > 0) {
            session.setAttribute("discountAmount", discount);
            session.setAttribute("appliedCode", trimmedCode);
            session.removeAttribute("promoError");
        } else {
            session.setAttribute("discountAmount", BigDecimal.ZERO);
            session.setAttribute("promoError", "Mã giảm giá không tồn tại.");
            session.removeAttribute("appliedCode");
        }

        return "redirect:/cart";
    }

    @PostMapping("/remove-promocode")
    public String removePromocode(HttpSession session) {
        session.removeAttribute("discountAmount");
        session.removeAttribute("appliedCode");
        session.removeAttribute("promoError");
        return "redirect:/cart";
    }
}
