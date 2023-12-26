package net.YCFengZi.Mapper;

import net.YCFengZi.Pojo.Product;
import net.YCFengZi.Pojo.User;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

/**
 * @Author：YCFengZi
 * @Date：2023/12/25 13:53
 */
@Mapper
public interface ProductMapper {
    List<Product> findAll();
    Product findById(Integer id);
    int add(Product product);
    int delete(int[] ids);
}