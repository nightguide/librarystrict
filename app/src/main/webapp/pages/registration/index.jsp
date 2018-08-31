<%@page contentType="text/html; charset=UTF-8" language="java" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <style>
        <%@include file="../../resources/css/pre/reg.css"%>
    </style>
    <title>Регистрация</title>
</head>

<body>
    <% request.setCharacterEncoding("UTF-8"); %>

    <jsp:include page="../templates/_layout_auth.jsp">
        <jsp:param name="content" value="registration/content"/>
    </jsp:include>
</body>
</html>