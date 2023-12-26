package net.YCFengZi.Service.Impl;

import net.YCFengZi.Mapper.CategoryMapper;
import net.YCFengZi.Pojo.Category;
import net.YCFengZi.Service.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * @Author：YCFengZi
 * @Date：2023/12/26 17:54
 */
@Service
@Transactional
public class CategoryServiceImpl implements CategoryService {
    @Autowired
    private CategoryMapper categoryMapper;

    @Override
    public List<Category> findAll() {
        return categoryMapper.findAll();
    }
}