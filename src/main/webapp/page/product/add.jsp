<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- HTML5文档-->
<!DOCTYPE html>
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
    <title>添加用户</title>

    <!-- 1. 导入CSS的全局样式 -->
    <link href="../../css/bootstrap.min.css" rel="stylesheet">
    <!-- 2. jQuery导入，建议使用1.9以上的版本 -->
    <script src="../../js/jquery-2.1.0.min.js"></script>
    <!-- 3. 导入bootstrap的js文件 -->
    <script src="../../js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
    <h3>添加商品页面</h3>
    <form action="##" id="addForm" onsubmit="return false" method="post">
        <div class="form-group">
            <label for="name">商品：</label>
            <input type="text" class="form-control" id="name" name="name" placeholder="请输入商品名">
        </div>

        <div class="form-group">
            <label>价格：</label>
            <input type="text" class="form-control" id="price" name="price" placeholder="请输入价格">
        </div>

        <div class="form-group">
            <label for="category">分类：</label>
            <select name="category.id" class="form-control" id="category"></select>
        </div>

        <div class="form-group" style="text-align: center">
            <input class="btn btn-primary" type="button" value="提交" onclick="add()"/>
            <input class="btn btn-default" type="reset" value="重置" />
            <input class="btn btn-default" type="button" value="返回" id="backBtn"/>
        </div>
    </form>
</div>
</body>
<script>
    $(function (){
        $.ajax({
            type:'GET',
            url:'/category/findAll',
            success:function (result){
                for(let data in result){
                    let option =  $("<option></option>").val(result[data].id).text(result[data].cname)
                    $("#category").append(option)
                }
            },
            dataType:'json'
        })

        var backButton = document.querySelector('#backBtn');
        backButton.addEventListener('click', function() {
            window.location.href = '/product/findAll';
        });
    })

    function add() {
        let flag = confirm("确认添加")
        if (!flag) {
            return;
        }
        $.ajax({
            type: 'POST',
            url: '/product/add',
            data: $('#addForm').serialize(),
            dataType: 'json',
            success: function (result2) {
                console.log(result2);
                if (result2.message == "添加成功！") {
                    alert(result2.message);
                    window.location.href='/product/findAll';
                }
            },
            error: function () {
                alert("添加错误！");
            }
        })
    }
</script>
</html>