<%@page contentType="text/html; charset=UTF-8" language="java"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <style>
        <%@include file="../../resources/css/active/books.css"%>
        <%@include file="../../resources/css/active/banner.css"%>
    </style>
    <script type="text/javascript">
        <%@include file="../../resources/scripts/books.js"%>
    </script>
    <title>Книги</title>
</head>

<body>
    <jsp:include page="../templates/_layout.jsp">
        <jsp:param name="content" value="books/content"/>
    </jsp:include>
</body>

</html>
