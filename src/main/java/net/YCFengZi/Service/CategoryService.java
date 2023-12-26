package net.YCFengZi.Service;

import net.YCFengZi.Pojo.Category;

import java.util.List;

/**
 * @Author：YCFengZi
 * @Date：2023/12/26 17:54
 */
public interface CategoryService {
    List<Category> findAll();
}