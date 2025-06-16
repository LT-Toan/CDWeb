package com.example.Custom.repository;

import java.time.LocalDateTime;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.Custom.domain.Order;
import com.example.Custom.domain.User;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

public interface OrderRepository extends JpaRepository<Order,Long>{
    List<Order> findByUser(User user);

    @Query("SELECT SUM(o.totalPrice) FROM Order o WHERE o.createdDate BETWEEN :start AND :end AND o.status = 'COMPLETED'")
    Double sumTotalPriceByCreatedDateBetween(@Param("start") LocalDateTime start, @Param("end") LocalDateTime end);

    @Query("SELECT COUNT(o) FROM Order o WHERE FUNCTION('MONTH', o.createdDate) = :month AND FUNCTION('YEAR', o.createdDate) = :year")
    int countByMonth(@Param("month") int month, @Param("year") int year);

}
