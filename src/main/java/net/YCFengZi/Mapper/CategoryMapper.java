package net.YCFengZi.Mapper;

import net.YCFengZi.Pojo.Category;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

/**
 * @Author：YCFengZi
 * @Date：2023/12/26 17:52
 */
@Mapper
public interface CategoryMapper {
    List<Category> findAll();
}