<%@page contentType="text/html; charset=UTF-8" language="java" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <style>
        <%@include file="../../resources/css/active/banner.css"%>
    </style>
</head>
<body>
    <% request.setCharacterEncoding("UTF-8"); %>

    <jsp:include page="../${param.content}.jsp"/>
</body>
</html>
