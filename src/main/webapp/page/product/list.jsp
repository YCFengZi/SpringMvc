<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<!-- 网页使用的语言 -->
<html lang="zh-CN">
<head>
    <!-- 指定字符集 -->
    <meta charset="utf-8">
    <!-- 使用Edge最新的浏览器的渲染方式 -->
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- viewport视口：网页可以根据设置的宽度自动进行适配，在浏览器的内部虚拟一个容器，容器的宽度与设备的宽度相同。
    width: 默认宽度与设备的宽度相同
    initial-scale: 初始的缩放比，为1:1 -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>用户信息管理系统</title>

    <!-- 1. 导入CSS的全局样式 -->
    <link href="../../css/bootstrap.min.css" rel="stylesheet">
    <!-- 2. jQuery导入，建议使用1.9以上的版本 -->
    <script src="../../js/jquery-2.1.0.min.js"></script>
    <!-- 3. 导入bootstrap的js文件 -->
    <script src="../../js/bootstrap.min.js"></script>
    <style type="text/css">
        td, th {
            text-align: center;
        }
    </style>
</head>
<body>
<div class="container">
    <h3 style="text-align: center">商品信息列表</h3>
    <table border="1" class="table table-bordered table-hover">
        <tr class="success">
            <td>选择</td>
            <th>序号</th>
            <th>商品名</th>
            <th>价格</th>
            <td>操作</td>
        </tr>
        <c:forEach items="${plist}" var="p" varStatus="v">
            <tr>
                <td>
                    <input type="checkbox"/>
                </td>
                <td>${v.count}</td>
                <td>${p.name}</td>
                <td>${p.price}</td>
                <td><a class="btn btn-default btn-sm" href="/product/editUI?id=${p.id}">修改</a>&nbsp
                    <a class="btn btn-default btn-sm" href="javascript:void(0)" data-value=""
                       onclick="deleteId(${p.id})">删除</a>
                </td>
            </tr>
        </c:forEach>

        <tr>
            <td colspan="8" align="center"><a class="btn btn-primary" href="/page/product/add.jsp">添加商品</a></td>
        </tr>
        <tr>
            <button>选中删除</button>
        </tr>
    </table>
</div>
</body>
<script>
    function deleteId(id) {
        let flag = confirm("确认删除？");
        if (!flag) {
            return;
        }
        let currentRow = $(event.target).closest("tr");
        $.ajax({
            type: 'POST',
            url: '/product/delete',
            data: { ids: id },
            dataType: 'json',
            success: function(result) {
                console.log(result);
                if (result.message == "删除成功！") {
                    alert(result.message);
                    // 删除当前行
                    currentRow.remove();
                }
            },
            error: function() {
                alert("删除错误！");
            }
        });
    }
</script>
</html>