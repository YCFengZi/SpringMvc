<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@page pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <title>首页</title>
    <!-- 1. 导入CSS的全局样式 -->
    <link href="../css/bootstrap.min.css" rel="stylesheet">
    <!-- 2. jQuery导入，建议使用1.9以上的版本 -->
    <script src="../js/jquery-2.1.0.min.js"></script>
    <!-- 3. 导入bootstrap的js文件 -->
    <script src="../js/bootstrap.min.js"></script>
    <script type="text/javascript">
    </script>
</head>
<body>
<c:choose>
    <c:when test="${user != null}">
        欢迎:${user.username}
        <a href="/product/findAll"> 查询所有</a>
        <div>
            <a href="/logout">退出</a>
        </div>
    </c:when>
    <c:otherwise>
        <a href="page/login.jsp">请登录</a>
    </c:otherwise>
</c:choose>
</body>
<script>
    console.log(${user})
</script>
</html>
