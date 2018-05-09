<%@page contentType="text/html; charset=utf-8" language="java"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <style>
        <%@include file="../../resources/css/core.css"%>
        <%@include file="../../resources/css/popmenu.css"%>
        <%@include file="../../resources/css/active/common_active.css"%>
        <%@include file="../../resources/css/active/book.css"%>
        <%@include file="../../resources/css/active/banner.css"%>
    </style>
    <script type="text/javascript">
        <%@include file="../../resources/libs/jquery-3.1.1.min.js"%>
        <%@include file="../../resources/scripts/common_active.js"%>
        <%@include file="../../resources/scripts/book.js"%>
    </script>
    <title>Роберт Лафоре. Структуры данных и алгоритмы в Java. Классика Computers Science</title>
</head>

<body>
    <% request.setCharacterEncoding("UTF-8"); %>
    <%@include file="header.jsp"%>
    <%@include file="content.jsp"%>
    <%@include file="footer.jsp"%>
</body>

</html>
