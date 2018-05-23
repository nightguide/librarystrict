<%@page contentType="text/html; charset=UTF-8" language="java"%>

<%
    request.setCharacterEncoding("UTF-8");
%>

<form class="layout_search">
    <input class="search input_text" type="text" name="tfSearch"
           placeholder="Введите название книги, автора или жанра"/>
    <input class="action_search" type="submit" value=""/>
</form>