package com.example.Custom.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.example.Custom.domain.User;

@Repository
public interface UserRepository extends JpaRepository<User, Long> {

    boolean existsByEmail(String email);
    long count();

    User findByEmail(String email);

    @Query("SELECT u FROM User u LEFT JOIN FETCH u.cart c LEFT JOIN FETCH c.cartItems WHERE u.email = :email")
    User findByEmailWithCartItems(@Param("email") String email);

    @Query("SELECT COUNT(u) FROM User u WHERE u.role.name = :roleName")
    long countByRoleName(@Param("roleName") String roleName);

}
