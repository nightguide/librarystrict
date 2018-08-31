<%@page contentType="text/html; charset=UTF-8" language="java" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <style>
        <%@include file="../../resources/css/core.css"%>
        <%@include file="../../resources/css/pre/common_auth_reg.css"%>
    </style>
    <script type="text/javascript">
        <%@include file="../../resources/libs/jquery-3.1.1.min.js"%>
        <%@include file="../../resources/scripts/core.js"%>
    </script>
</head>
<body>
    <% request.setCharacterEncoding("UTF-8"); %>

    <div class="content">
        <img class="logo" src="resources/images/png/Logo_LibraryStrict.png" alt="logo"/>
        <div class="layout_main">
            <jsp:include page="../${param.content}.jsp"/>
        </div>
    </div>
</body>
</html>
