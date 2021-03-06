<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<html>
<head>
    <title>修改字典明细</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 引入 Bootstrap -->
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    基于SSM框架的管理系统：简单实现增、删、改、查。
                </h1>
            </div>
        </div>
    </div>

    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>修改字典明细</small>
                </h1>
            </div>
        </div>
    </div>

    <form action="" name="userForm">
        <input type="hidden" name="dicId" value="${dicd.dicId}"/>
        字典ItemKey：<input type="text" name="dicItemKey" value="${dicd.dicItemKey}"/>
        字典ItemValue：<input type="text" name="dicItemValue" value="${dicd.dicItemValue}"/>
        字典Status：<input type="text" name="dicStatus" value="${dicd.dicStatus }"/>
        字典码：<input type="text" name="dicCode" value="${dicd.dicCode }"/>
        <input type="button" value="提交" onclick="updateDicd()"/>
    </form>
    <script type="text/javascript">
        function updateDicd() {
            var form = document.forms[0];
            form.action = "<%=basePath %>testExample2/updateDicd";
            form.method = "post";
            form.submit();
        }
    </script>
</div>