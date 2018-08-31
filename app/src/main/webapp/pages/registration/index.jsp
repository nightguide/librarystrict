<%@page contentType="text/html; charset=UTF-8" language="java" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <style>
        <%@include file="../../resources/css/core.css"%>
        <%@include file="../../resources/css/pre/common_auth_reg.css"%>
        <%@include file="../../resources/css/pre/reg.css"%>
    </style>
    <script type="text/javascript">
        <%@include file="../../resources/libs/jquery-3.1.1.min.js"%>
        <%@include file="../../resources/scripts/core.js"%>
    </script>
    <title>Регистрация</title>
</head>

<body>
    <% request.setCharacterEncoding("UTF-8"); %>

    <div class="content">
        <img class="logo" src="resources/images/png/Logo_LibraryStrict.png" alt="logo"/>
        <div class="layout_main">
            <p class="title">Регистрация</p>
            <form id="reg_form" class="layout_form" action="\registration" method="post">
                <div class="layout_input_fields">
                    <input type="text" name="username" placeholder="Введите логин" class="input_text"/>
                    <p class="error_message"></p>
                </div>
                <div class="layout_input_fields">
                    <input type="text" name="email" placeholder="Введите email" class="input_text"/>
                    <p class="error_message"></p>
                </div>
                <div class="layout_input_fields">
                    <input type="password" name="password" placeholder="Введите пароль" class="input_text"/>
                    <p class="error_message"></p>
                </div>
                <div class="layout_input_fields">
                    <input type="password" name="passwordRetry" placeholder="Повторите пароль" class="input_text"/>
                    <p class="error_message"></p>
                </div>
                <div class="layout_input_fields">
                    <input type="text" name="name" placeholder="Введите ваше имя" class="input_text"/>
                    <p class="error_message"></p>
                </div>
                <div class="layout_input_fields">
                    <input type="text" name="surname" placeholder="Введите вашу фамилию" class="input_text"/>
                    <p class="error_message"></p>
                </div>
                <div class="layout_input_fields">
                    <input type="text" name="middlename" placeholder="Введите ваше отчество" class="input_text"/>
                    <p class="error_message"></p>
                </div>
                <div class="layout_buttons">
                    <input id="btn_signin" type="button" value="зарегистрироваться" class="buttons"/>
                    <div class="separator"></div>
                    <input type="button" name="btn_reg" value="назад" class="buttons"
                           onclick="window.location.href='<%=request.getContextPath()%>/auth'"/>
                </div>
            </form>
        </div>
    </div>

<script>
    $('#btn_signin').click(function(event){
        event.preventDefault()

        var formData = convertFormToJSON('#reg_form')

        $.ajax({
            type: 'POST',
            url: '/registration',
            dataType: 'json',
            contentType: 'application/json',
            data: JSON.stringify(formData),
            success: function(data){
                window.location.replace(data.url)
            },
            error: function(data){
                console.log('error');
                displayErrorsToForm('#reg_form', data.responseJSON);
            }
        });
    });
</script>
</body>
</html>