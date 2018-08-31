<%@page contentType="text/html; charset=UTF-8" language="java"%>

<%
    request.setCharacterEncoding("UTF-8");
%>

<jsp:include page="../templates/_layout_banner.jsp">
    <jsp:param name="content" value="authors/banner_content"/>
</jsp:include>