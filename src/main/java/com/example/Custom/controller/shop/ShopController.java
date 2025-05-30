package com.example.Custom.controller.shop;


import com.example.Custom.domain.Product;
import com.example.Custom.domain.dto.ProductDTO;
import com.example.Custom.service.ProductService;
import com.example.Custom.service.ShopService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

@Controller
public class ShopController {

    @Autowired
    private ProductService productService;
    @Autowired
    private ShopService shopService;

//    @GetMapping("/shop")
//    public String shopPage(Model model) {
//        List<Product> products = productService.getAllProducts(); // lấy danh sách sản phẩm
//        model.addAttribute("product", products); // đặt tên attribute giống với name trong JSP
//        return "home/shop"; // view shop.jsp
//    }
@GetMapping("/shop")
public String shopPage(
        @RequestParam(value = "categoryIds", required = false) String categoryIdsParam,
        @RequestParam(value = "colors", required = false) String colorsParam,
        @RequestParam(value = "sizes", required = false) String sizesParam,
        @RequestParam(value = "materials", required = false) String materialsParam,
        @RequestParam(value = "minPrice", required = false) Double minPrice,
        @RequestParam(value = "maxPrice", required = false) Double maxPrice,
        Model model
) {
    // Parse param thành List<Long> cho categoryIds
    List<Long> categoryIds = null;
    if (categoryIdsParam != null && !categoryIdsParam.isEmpty()) {
        categoryIds = Arrays.stream(categoryIdsParam.split(","))
                .map(Long::parseLong)
                .collect(Collectors.toList());
    }

    // Parse param thành List<String> cho colors
    List<String> colors = null;
    if (colorsParam != null && !colorsParam.isEmpty()) {
        colors = Arrays.asList(colorsParam.split(","));
    }

    // Parse param thành List<String> cho sizes
    List<String> sizes = null;
    if (sizesParam != null && !sizesParam.isEmpty()) {
        sizes = Arrays.asList(sizesParam.split(","));
    }

    // Parse param thành List<String> cho materials
    List<String> materials = null;
    if (materialsParam != null && !materialsParam.isEmpty()) {
        materials = Arrays.asList(materialsParam.split(","));
    }

    // Gọi service để lọc sản phẩm với tất cả params
    List<ProductDTO> filteredProducts = shopService.filterProducts(categoryIds, colors, sizes, materials, minPrice, maxPrice);

    model.addAttribute("product", filteredProducts);

    return "home/shop";
}
}
