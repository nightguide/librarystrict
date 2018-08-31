<%@page contentType="text/html; charset=UTF-8" language="java" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <style>
        <%@include file="../../resources/css/core.css"%>
        <%@include file="../../resources/css/pre/common_auth_reg.css"%>
        <%@include file="../../resources/css/pre/auth.css"%>
    </style>
    <script type="text/javascript">
        <%@include file="../../resources/libs/jquery-3.1.1.min.js"%>
        <%@include file="../../resources/scripts/core.js"%>
    </script>
    <title>Авторизация</title>
</head>

<body>
    <% request.setCharacterEncoding("UTF-8"); %>

    <div class="content">
        <img class="logo" src="resources/images/png/Logo_LibraryStrict.png" alt="logo"/>
        <div class="layout_main">
            <p class="title">Авторизация</p>
            <form id="auth_form" class="layout_form" action="\auth" method="post">
                <div class="layout_input_fields">
                    <input type="text" name="username" placeholder="Введите логин или e-mail" class="input_text"/>
                    <p class="error_message"></p>
                </div>
                <div class="layout_input_fields">
                    <input type="password" name="password" placeholder="Введите пароль" class="input_text"/>
                    <p class="error_message"></p>
                </div>
                <div class="layout_buttons">
                    <input type="button" id="btn_signin" value="войти" class="buttons"/>
                    <div class="separator"></div>
                    <input type="button" name="btn_reg" value="регистрация" class="buttons"
                            onclick="window.location.href='<%=request.getContextPath()%>/registration'"/>
                </div>
            </form>
        </div>
    </div>

    <script>
        $('#btn_signin').click(function(event){
            event.preventDefault()

            var formData = convertFormToJSON('#auth_form')

            $.ajax({
                type: 'POST',
                url: '/auth',
                dataType: 'json',
                contentType: 'application/json',
                data: JSON.stringify(formData),
                success: function(data){
                    window.location.replace(data.url)
                },
                error: function(data){
                    displayErrorsToForm('#auth_form', data.responseJSON);
                }
            });
        });
    </script>
</body>
</html>