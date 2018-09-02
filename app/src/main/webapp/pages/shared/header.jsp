<%@page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%
    request.setCharacterEncoding("UTF-8");
%>

<header class="header container">
    <a href="#">
        <img class="logo" src="resources/images/png/Logo_LibraryStrict.png" alt="logo"/>
    </a>
    <div class="layout_profile" style="position: relative">
        <div class="profile">
            <c:if test="${user != null}">
                <div class="layout_profile_image">
                    <img class="profile_image" src="profile_data/138g511b-2e9e-4ec4-f170-d9743e23bab7/face.jpg"/>
                </div>
                <div class="layout_profile_name">
                    <a class="profile_name">Константин К.</a>
                    <a class="arrow"></a>
                </div>
                <ul class="submenu_profile">
                    <li><a class="submenu_item" href="#">Профиль</a></li>
                    <li><a class="submenu_item" href="#">Безопасность</a></li>
                    <li><a class="submenu_item" href="#">Уведомления</a></li>
                    <li><a class="submenu_item" href="/logout">Выход</a></li>
                </ul>
            </c:if>

            <c:if test="${user == null}">
                <div class="layout_profile_name">
                    <a class="profile_name" href="/auth">Войти</a>
                </div>
            </c:if>
        </div>
    </div>
</header>