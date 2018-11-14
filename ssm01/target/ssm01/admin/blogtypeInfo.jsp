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

    <table id="datagrid"></table>

    <div id="dialog">

    <script type="text/javascript">
        // 定义全局变量，用于CRUD操作方法
        var url;

        function openAddDialog() {
            $('#dialog').dialog('open').dialog('setTitle', '添加博客分类信息');
            // url值为BlogTypeController中添加操作的RequestMapping
            url = "${blog}/blogAdmin/blogType/";
        }

        function openEditDialog() {
            $('#dialog').dialog('open').dialog('setTitle', '编辑博客分类信息');
        }

        var toolbar = [{
            iconCls: 'icon-add',
            handler: function () {
                openAddDialog();
            }
        }, {
            iconCls: 'icon-edit',
            handler: function () {
                openEditDialog();
            }
        }, {
            iconCls: 'icon-remove',
            handler: function () {
                openDeleteDialog();
            }
        }];

        $('#datagrid').datagrid({
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
            toolbar: toolbar,
            pagination: true,
            pageSize: 10,
            pageList: [5, 10, 20]
        });
    </script>
</body>
</html>