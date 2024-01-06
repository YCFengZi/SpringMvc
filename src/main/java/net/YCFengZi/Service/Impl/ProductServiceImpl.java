package net.YCFengZi.Service.Impl;

import net.YCFengZi.Mapper.ProductMapper;
import net.YCFengZi.Pojo.Product;
import net.YCFengZi.Service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * @Author：YCFengZi
 * @Date：2023/12/25 13:58
 */
@Service
@Transactional
public class ProductServiceImpl implements ProductService {
    @Autowired
    private ProductMapper productMapper;

    @Override
    public List<Product> findAll() {
        return productMapper.findAll();
    }

    @Override
    public Product findById(Integer id) {
        return productMapper.findById(id);
    }

    @Override
    public int add(Product product) {
        return productMapper.add(product);
    }

    @Override
    public int delete(int[] ids) {
        return productMapper.delete(ids);
    }

    @Override
    public int update(Product product) {
        return productMapper.update(product);
    }
}