<%@page contentType="text/html; charset=UTF-8" language="java"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <style>
        <%@include file="../../resources/css/active/book.css"%>
        <%@include file="../../resources/css/active/banner.css"%>
    </style>
    <script type="text/javascript">
        <%@include file="../../resources/scripts/book.js"%>
    </script>
    <title>Роберт Лафоре. Структуры данных и алгоритмы в Java. Классика Computers Science</title>
</head>

<body>
    <% request.setCharacterEncoding("UTF-8"); %>

    <jsp:include page="../templates/_layout.jsp">
        <jsp:param name="content" value="book/content"/>
    </jsp:include>
</body>

</html>
