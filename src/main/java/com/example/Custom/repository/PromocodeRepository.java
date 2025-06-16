package com.example.Custom.repository;

import com.example.Custom.domain.Promocode;
import org.springframework.data.jpa.repository.JpaRepository;

public interface PromocodeRepository extends JpaRepository<Promocode, Long> {
    Promocode findByCode(String code);
}
