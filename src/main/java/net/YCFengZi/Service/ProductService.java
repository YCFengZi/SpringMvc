package net.YCFengZi.Service;

import net.YCFengZi.Pojo.Product;

import java.util.List;

/**
 * @Author：YCFengZi
 * @Date：2023/12/25 13:58
 */
public interface ProductService {
    List<Product> findAll();
    Product findById(Integer id);
    int add(Product product);
    int delete(int[] ids);
    int update(Product product);
}
