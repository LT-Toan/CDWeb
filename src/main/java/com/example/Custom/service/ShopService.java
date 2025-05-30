package com.example.Custom.service;

import com.example.Custom.domain.Product;
import com.example.Custom.domain.dto.ProductDTO;
import com.example.Custom.repository.ProductRepository;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class ShopService {

    private final ProductRepository productRepository;

    public ShopService(ProductRepository productRepository) {
        this.productRepository = productRepository;
    }

    public List<ProductDTO> filterProducts(List<Long> categoryIds, List<String> colors, List<String> sizes,
                                           List<String> materials, Double minPrice, Double maxPrice) {
        List<Product> allProducts = productRepository.findAll();

        if (categoryIds != null && !categoryIds.isEmpty()) {
            allProducts = allProducts.stream()
                    .filter(p -> p.getCategory() != null && categoryIds.contains(p.getCategory().getId()))
                    .collect(Collectors.toList());
        }

        if (colors != null && !colors.isEmpty()) {
            allProducts = allProducts.stream()
                    .filter(p -> colors.contains(p.getColor()))
                    .collect(Collectors.toList());
        }

        if (sizes != null && !sizes.isEmpty()) {
            allProducts = allProducts.stream()
                    .filter(p -> sizes.contains(p.getSize()))
                    .collect(Collectors.toList());
        }

        if (materials != null && !materials.isEmpty()) {
            allProducts = allProducts.stream()
                    .filter(p -> materials.contains(p.getMaterial()))
                    .collect(Collectors.toList());
        }

        if (minPrice != null) {
            allProducts = allProducts.stream()
                    .filter(p -> p.getPrice() >= minPrice)
                    .collect(Collectors.toList());
        }

        if (maxPrice != null) {
            allProducts = allProducts.stream()
                    .filter(p -> p.getPrice() <= maxPrice)
                    .collect(Collectors.toList());
        }

        return allProducts.stream()
                .map(this::mapToDto)
                .collect(Collectors.toList());
    }

    private ProductDTO mapToDto(Product product) {
        ProductDTO dto = new ProductDTO();
        dto.setId(product.getId());
        dto.setName(product.getName());
        dto.setDescription(product.getDescription());
        dto.setPrice(product.getPrice());
        dto.setSize(product.getSize());
        dto.setColor(product.getColor());
        dto.setMaterial(product.getMaterial());
        dto.setStock(product.getStock());
        if (product.getCategory() != null) {
            dto.setCategoryId(product.getCategory().getId());
            dto.setCategoryName(product.getCategory().getName());
        }
        dto.setImageUrl(product.getImageUrl());
        return dto;
    }
}
