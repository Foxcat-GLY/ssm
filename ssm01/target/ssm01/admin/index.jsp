<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>个人博客后台管理</title>
    <%@include file="common/header.jsp" %>
    <style type="text/css">
        body {
            font-family: microsoft yahei;
        }
    </style>
</head>
<body class="easyui-layout">
    <div region="north" style="height: 78px; background-color: #E0ECFF">
    </div>
    <div region="west" style="width: 200px" title="导航菜单" split="true">
        <div id="sm"></div>
    </div>
    <div data-options="region:'center'" style="background:#eee;">
        <div class="easyui-tabs" fit="true" border="false" id="tabs">
            <div title="首页" data-options="iconCls:'fa fa-home'">
                <div align="center" style="padding-top: 100px"><font color="red" size="10">欢迎使用</font></div>
            </div>
        </div>
    </div>
    <div region="south" style="height: 25px;padding: 5px" align="center">
        Copyright © 2012-2017 SSM博客系统 版权所有
    </div>
    <script type="text/javascript">
        var data = [{
            text: '常用操作',
            iconCls: 'icon-sum',
            state: 'open',
            children: [{
                text: '写博客'
            }, {
                text: '评论审核'
            }]
        }, {
            text: '博客管理',
            iconCls: 'fa fa-edit fa-fw',
            children: [{
                text: '写博客'
            }, {
                text: '博客信息管理'
            }]
        }, {
            text: '博客类别管理',
            iconCls: 'fa fa-tags fa-fw',
            children: [{
                text: '博客类别信息管理'
            }]
        }, {
            text: '评论管理',
            iconCls: 'fa fa-comments fa-fw',
            children: [{
                text: '评论审核'
            }, {
                text: '评论信息管理'
            }]
        }, {
            text: '博主管理',
            iconCls: 'fa fa-group fa-fw',
            children: [{
                text: '博主信息管理',
                url: 'bloggerInfo.jsp'
            }, {
                text: '博主权限管理'
            }]
        }, {
            text: '系统管理',
            iconCls: 'fa fa-cog fa-fw',
            children: [{
                text: '友情链接管理',
                url: '/demo/book/abc'
        }, {
                text: '修改密码'
            }, {
                text: '安全退出'
            }]
        }];
        $('#sm').sidemenu({
            width: 180,
            border: false,
            data: data,
            onSelect: function (item) {
                openTab(item.text, item.url, item.iconCls);
            }
        });

        /**
         * 打开选项卡
         * @param text  选项卡标题
         * @param url   请求打开路径
         * @param icon  选项卡图标
         */
        function openTab(text,url,icon) {
            //判断当前选项卡是否存在
            if($('#tabs').tabs('exists',text)){
                //如果存在 显示
                $("#tabs").tabs("select",text);
            }else{
                //如果不存在 则新建一个
                $("#tabs").tabs('add',{
                    title:text,
                    closable:true,      //是否允许选项卡摺叠。
                    iconCls:icon,    //显示图标
                    content:"<iframe frameborder=0 scrolling='auto' style='width:100%;height:100%' src='${blog}/admin/" + url + "'></iframe>"
                    //url 远程加载所打开的url
                })
            }
        }
    </script>
</body>
</html>
