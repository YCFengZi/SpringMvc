package net.YCFengZi.Controller;

import net.YCFengZi.Pojo.Product;
import net.YCFengZi.Pojo.User;
import net.YCFengZi.ResuInfo.ResuInfo;
import net.YCFengZi.Service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * @Author：YCFengZi
 * @Date：2023/12/25 14:04
 */
@Controller
@RequestMapping("/product/")
public class ProductController {
    @Autowired
    private ProductService productService;

    @GetMapping("/findAll")
    public String findAll(Model model) {
        List<Product> list = productService.findAll();
        model.addAttribute("plist",list);
        System.out.println(list);
        return "product/list";
    }

    @GetMapping("/findById")
    public Product findById(Integer id,Model model) {
        Product byId = productService.findById(id);
        return byId;
    }

    @PostMapping("/add")
    @ResponseBody
    public ResuInfo add(Product product) {
        int add = productService.add(product);
        ResuInfo<Object> info = new ResuInfo<>();
        if (add > 0) {
            info.setMessage("添加成功！");
        } else {
            info.setMessage("添加失败！");
        }
        return info;
    }

    @PostMapping("/delete")
    @ResponseBody
    public ResuInfo delete(int[] ids) {
        int delete = productService.delete(ids);
        ResuInfo<Object> info = new ResuInfo<>();
        if (delete > 0) {
            info.setMessage("删除成功！");
        } else {
            info.setMessage("删除失败！");
        }
        return info;
    }
}