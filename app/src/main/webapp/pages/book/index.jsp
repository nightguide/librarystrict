<%@page contentType="text/html; charset=UTF-8" language="java"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Роберт Лафоре. Структуры данных и алгоритмы в Java. Классика Computers Science</title>
</head>

<body>
    <% request.setCharacterEncoding("UTF-8"); %>

    <jsp:include page="../templates/_layout.jsp">
        <jsp:param name="content" value="book/content"/>
    </jsp:include>
</body>

</html>
