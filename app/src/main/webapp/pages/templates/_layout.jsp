<%@page contentType="text/html; charset=UTF-8" language="java" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <style>
        <%@include file="../../resources/css/core.css"%>
        <%@include file="../../resources/css/popmenu.css"%>
        <%@include file="../../resources/css/active/common_active.css"%>
    </style>
    <script type="text/javascript">
        <%@include file="../../resources/libs/jquery-3.1.1.min.js"%>
        <%@include file="../../resources/scripts/core.js"%>
        <%@include file="../../resources/scripts/common_active.js"%>
    </script>
</head>
<body>
    <% request.setCharacterEncoding("UTF-8"); %>

    <%@include file="../shared/header.jsp"%>

    <main class="main container">
        <%@include file="../shared/components/search.jsp"%>
        <%@include file="../shared/components/menu.jsp"%>

        <jsp:include page="../${param.content}.jsp"/>
    </main>

    <%@include file="../shared/footer.jsp"%>
</body>
</html>
