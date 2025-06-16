package com.example.Custom.domain;

import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.List;

import jakarta.persistence.*;
import org.hibernate.annotations.CreationTimestamp;

import lombok.Data;

@Entity
@Table(name = "orders")
@Data
public class Order {
     @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    private double totalPrice;

    private String receiverName;

    private String receiverAddress;

    private String receiverPhone;

    private String receiverNote;

    private String status;

    @ManyToOne
    @JoinColumn(name = "user_id")
    private User user;

    @OneToMany(mappedBy = "order")
    private List<OrderDetail> details;

    @CreationTimestamp
    @Column(name = "created_date", updatable = false)
    private LocalDateTime createdDate;

    public java.util.Date getCreatedDateAsDate() {
        return java.sql.Timestamp.valueOf(this.createdDate);
    }


}
