<%@page contentType="text/html; charset=UTF-8" language="java"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Книги</title>
</head>

<body>
    <jsp:include page="../templates/_layout.jsp">
        <jsp:param name="content" value="books/content"/>
    </jsp:include>
</body>

</html>
