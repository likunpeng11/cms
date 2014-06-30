<%@page contentType="text/html; charset=utf-8"%>
<%@ include file="/WEB-INF/jsp/include.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html lang="zh-cn">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>菜单管理</title>
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

<div class="container">
    <div class="login-box text-center" >
        <div class="login-single-panel-header">
            <c:choose>
                <c:when test="${menuForm.id == null}">
                    <div class="titlediv"><h3>添加菜单</h3></div>
                </c:when>
                <c:otherwise>
                    <div class="titlediv"><h3>修改菜单</h3></div>
                </c:otherwise>
            </c:choose>
        </div>
        <div>
            <h5 style="color:red">${menuForm.errorMessage}</h5>
        </div>
        <form id="theform" class="form-signup-heading" action="${ctx}/menu/save" method="post">
            <input type="hidden" id="id" name="id" value="${menuForm.id}">
            <br/>
            <input type="text" id="name" name="name" autofocus="" required="" placeholder="菜单名称" value="${menuForm.name}" class="form-control">
            <br/>
            <input type="text" id="url" name="url" autofocus="" required="" placeholder="url" value="${menuForm.url}" class="form-control">
            <br/>
            <input type="text" id="orderValue" name="orderValue" autofocus="" required="" placeholder="菜单排序值" value="${menuForm.orderValue}" class="form-control">
            <br/>
            <input type="text" id="validValue" name="validValue" autofocus="" required="" placeholder="是否有效" value="${menuForm.validValue}" class="form-control">
            <br/>
            <input type="text" id="memo" name="memo" autofocus="" required="" placeholder="备注" value="${menuForm.memo}" class="form-control">
            <br/>
            <input class="btn btn-primary btn-lg" id="sub" name="sub" value="提交" type="submit" />
        </form>
    </div>
</div>
</div>
<div class="text-center bottom">
    Copyright &copy; 2007-2014 qatang.com All rights reserved.
</div>
</body>
</html>