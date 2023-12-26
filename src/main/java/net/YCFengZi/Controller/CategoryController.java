package net.YCFengZi.Controller;

import net.YCFengZi.Pojo.Category;
import net.YCFengZi.Service.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * @Author：YCFengZi
 * @Date：2023/12/26 17:51
 */
@Controller
@RequestMapping("/category/")
public class CategoryController {
    @Autowired
    private CategoryService categoryService;

    @GetMapping("/findAll")
    @ResponseBody
    public List<Category> findAll() {
        List<Category> list = categoryService.findAll();
        System.out.println(list);
        return list;
    }
}