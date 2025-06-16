package com.example.Custom.service;

import com.example.Custom.domain.Promocode;
import com.example.Custom.repository.PromocodeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;

@Service
public class PromocodeService {

    @Autowired
    private PromocodeRepository promoRepo;

    public BigDecimal getDiscountByCode(String code) {
        Promocode promo = promoRepo.findByCode(code);
        return promo != null ? promo.getDiscountAmount() : BigDecimal.ZERO;
    }

    public boolean isValidCode(String code) {
        return promoRepo.findByCode(code) != null;
    }
}
