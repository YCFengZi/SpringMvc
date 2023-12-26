package net.YCFengZi.ResuInfo;

import lombok.Data;

/**
 * @Author：YCFengZi
 * @Date：2023/12/26 19:50
 */
@Data
public class ResuInfo<T> {
    private Boolean flag;
    private String message;
    private Object date;
}