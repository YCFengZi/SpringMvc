package net.YCFengZi.Mapper;

import net.YCFengZi.Pojo.User;
import org.apache.ibatis.annotations.Param;

/**
 * @Author：YCFengZi
 * @Date：2023/12/28 17:30
 */
public interface UserMapper {
    User findByUser(@Param("username") String username, @Param("password") String  password);
}