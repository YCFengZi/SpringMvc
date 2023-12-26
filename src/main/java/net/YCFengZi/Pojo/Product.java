package net.YCFengZi.Pojo;

import lombok.Data;

/**
 * @Author：YCFengZi
 * @Date：2023/12/25 13:52
 */
@Data
public class Product {
    private Integer id;
    private String name;
    private Float price;
    private Integer cid;
    private Category category;
}