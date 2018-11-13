<%@page language="java" pageEncoding="UTF-8" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>博客类型页面</title>

    <%@include file="common/header.jsp" %>
</head>
<body>

    <table id="dg"></table>

    <script type="text/javascript">
        $('#dg').datagrid({
            fit: true,
            columns: [[{
                field: 'checkbox',
                checkbox: true,
                align: 'center'
            }, {
                field: 'id',
                title: 'ID',
                width: 60,
                align: 'center'
            }, {
                field: 'typeName',
                title: '分类名称',
                width: 100,
                align: 'left'  // 默认为“left”
            }, {
                field: 'orderNum',
                title: '排序',
                width: 100,
                align: 'center'
            }]],
            pagination: true,
        });
    </script>
</body>
</html>