package net.YCFengZi.Service;

import net.YCFengZi.Pojo.User;
import org.apache.ibatis.annotations.Param;

/**
 * @Author：YCFengZi
 * @Date：2023/12/28 17:32
 */
public interface UserService {
    User findByUser(String username,String  password);
}
