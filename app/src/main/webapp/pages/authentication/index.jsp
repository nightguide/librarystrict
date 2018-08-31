<%@page contentType="text/html; charset=UTF-8" language="java" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Авторизация</title>
</head>

<body>
    <% request.setCharacterEncoding("UTF-8"); %>

    <jsp:include page="../templates/_layout_auth.jsp">
        <jsp:param name="content" value="authentication/content"/>
    </jsp:include>
</body>
</html>