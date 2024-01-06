<%--
  Created by IntelliJ IDEA.
  User: FengZi
  Date: 2023/12/28
  Time: 17:41
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html lang="zh-CN">
<head>
    <!-- 指定字符集 -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>修改商品信息</title>
    <link href="../../css/bootstrap.min.css" rel="stylesheet">
    <script src="../../js/jquery-2.1.0.min.js"></script>
    <script src="../../js/bootstrap.min.js"></script>

</head>
<body>
<div class="container" style="width: 400px;">
    <h3 style="text-align: center;">修改商品信息</h3>
    <form action="/product/update" id="updateForm" method="post">
        <input type="hidden" value="${product.id}" name="id">
        <div class="form-group">
            <label for="name">商品：</label>
            <input type="text" class="form-control" id="name" name="name" placeholder="请输入姓名"
                   value="${product.name}">
        </div>

        <div class="form-group">
            <label>价格：</label>
            <input type="text" class="form-control" id="price" name="price" placeholder="请输入价格"
                   value="${product.price}">
        </div>

        <div class="form-group">
            <label for="category">分类：</label>
            <select name="category.id" class="form-control" id="category">
                <c:forEach items="${clist}" var="c">
                    <option value="${c.id}" <c:if test="${c.id == product.cid}">selected</c:if>>${c.cname}</option>
                </c:forEach>
            </select>
        </div>

        <div class="form-group" style="text-align: center">
            <input class="btn btn-primary" type="submit" value="提交"/>
            <input class="btn btn-default" type="reset" value="重置"/>
            <input class="btn btn-default" type="button" value="返回" id="backBtn"/>
        </div>
    </form>
</div>
</body>
<script>
    $(function () {
        var backButton = document.querySelector('#backBtn');
        backButton.addEventListener('click', function () {
            window.location.href = '/product/findAll';
        });

        // $("#updateForm").submit(function (event) {
        //     event.preventDefault();
        //     let formData = new FormData();
        //     formData.append("id", $("#id").val())
        //     formData.append("name", $("#name").val())
        //     formData.append("price", $("#price").val())
        //     formData.append("category.id", $("#category").val())
        //     $.ajax({
        //         type: 'POST',
        //         url: '/product/update',
        //         data: formData,
        //         enctype: 'multipart/form-data',
        //         dataType: 'json',
        //         success: function (result) {
        //             console.log(result);
        //             if (result.message == '修改成功！') {
        //                 alert(result.message);
        //                 window.location.href = '/product/findAll';
        //             }
        //         },
        //         error: function () {
        //             alert("修改错误！");
        //         }
        //     })
        // })

    })
</script>
</html>
