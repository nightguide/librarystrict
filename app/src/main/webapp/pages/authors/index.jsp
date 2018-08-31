<%@page contentType="text/html; charset=UTF-8" language="java"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <style>
        <%@include file="../../resources/css/active/authors.css"%>
    </style>
    <script type="text/javascript">
        <%@include file="../../resources/scripts/authors.js"%>
    </script>
    <title>Книги</title>
</head>

<body>
    <%
        request.setCharacterEncoding("UTF-8");
    %>

    <jsp:include page="../templates/_layout.jsp">
        <jsp:param name="content" value="authors/content"/>
    </jsp:include>
</body>

</html>
