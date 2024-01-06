package net.YCFengZi.Service.Impl;

import net.YCFengZi.Mapper.UserMapper;
import net.YCFengZi.Pojo.User;
import net.YCFengZi.Service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * @Author：YCFengZi
 * @Date：2023/12/28 17:32
 */
@Service
@Transactional
public class UserServiceImpl implements UserService {
    @Autowired
    private UserMapper userMapper;

    @Override
    public User findByUser(String username, String password) {
        return userMapper.findByUser(username,password);
    }
}