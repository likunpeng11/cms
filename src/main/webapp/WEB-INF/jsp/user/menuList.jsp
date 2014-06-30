<%@page contentType="text/html; charset=utf-8"%>
<%@ include file="/WEB-INF/jsp/include.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html lang="zh-cn">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>菜单列表</title>
    <meta http-equiv="pragma" content="no-cache" />
    <meta http-equiv="keywords" content="" />
    <meta http-equiv="description" content="" />
    <link rel="shortcut icon" href="favicon.ico" type="image/x-icon" />
    <link rel="stylesheet" href="${ctx}/css/bootstrap.min.css">
    <link rel="stylesheet" href="${ctx}/css/main.css">
    <script src="${ctx}/js/jquery-1.11.1.min.js"></script>
    <script src="${ctx}/js/bootstrap.min.js"></script>
</head>
<body>
<div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
    <div class="container">
        <div class="navbar-header">
            <a class="navbar-brand" href="#">后台管理系统</a>
        </div>
    </div>
</div>
<div>
    <div>
        <div style="padding-left: 10px">
            <div style="padding-top: 50px;color: red">
                <h5>遍历菜单页面</h5>
                <br/>
                <a href="${ctx}/menu/input">添加</a>
            </div>
            <c:if test="${menuList != null && menuList.size() > 0}">
            <table class='querytab' cellspacing='1' cellpadding='0' border='1' width="80%">
                <thead>
                <tr class="trh">
                    <td align="center" width="10%">序号</td>
                    <td align="center" width="10%">菜单名</td>
                    <td align="center" width="20%">菜单链接</td>
                    <td align="center" width="20%">菜单排序值</td>
                    <td align="center" width="10%">是否有效</td>
                    <td align="center" width="20%">备注</td>
                    <td align="center" width="10%">操作</td>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="menu" items="${menuList}" varStatus="status">
                    <tr class="trh">
                        <td align="center">${status.count}</td>
                        <td align="center">${menu.name}</td>
                        <td align="center">${menu.url}</td>
                        <td align="center">${menu.orderView}</td>
                        <td align="center">${menu.valid}</td>
                        <td align="center">${menu.memo}</td>
                        <td align="center"><a href="${ctx}/menu/update?id=${menu.id}">修改</a></td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
            </c:if>
        </div>
<%--        <br/>
        <a href="${ctx}/menu/input">添加</a>
        <br/>
        <a href="${ctx}/menu/update?id=1">修改</a>
        <div>
            <h5 style="color:red">${id}</h5>
        </div>--%>
    </div>
</div>
<%--<div class="text-center bottom">
    Copyright &copy; 2007-2014 qatang.com All rights reserved.
</div>--%>
</body>
</html>