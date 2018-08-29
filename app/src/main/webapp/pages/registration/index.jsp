<%@page contentType="text/html; charset=UTF-8" language="java" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <style>
        <%@include file="../../resources/css/core.css"%>
        <%@include file="../../resources/css/pre/common_auth_reg.css"%>
        <%@include file="../../resources/css/pre/reg.css"%>
    </style>
    <title>Регистрация</title>
</head>

<body>
    <% request.setCharacterEncoding("UTF-8"); %>

    <div class="content">
        <img class="logo" src="resources/images/png/Logo_LibraryStrict.png" alt="logo"/>
        <div class="layout_main">
            <p class="title">Регистрация</p>
            <form class="layout_input_fields" action="\registration" method="post">
                <input type="text" name="username" placeholder="Введите логин" class="input_text"/>
                <input type="text" name="email" placeholder="Введите email" class="input_text"/>
                <input type="password" name="password" placeholder="Введите пароль" class="input_text"/>
                <input type="password" name="passwordRetry" placeholder="Повторите пароль" class="input_text"/>
                <input type="text" name="name" placeholder="Введите ваше имя" class="input_text"/>
                <input type="text" name="surname" placeholder="Введите вашу фамилию" class="input_text"/>
                <input type="text" name="middlename" placeholder="Введите ваше отчество" class="input_text"/>
                <div class="layout_buttons">
                    <input type="submit" name="btn_signin" value="зарегистрироваться" class="buttons"/>
                    <div class="separator"></div>
                    <input type="button" name="btn_reg" value="назад" class="buttons"
                            onclick="window.location.href='<%=request.getContextPath()%>/auth'"/>
                </div>
            </form>
        </div>
    </div>
</body>
</html>