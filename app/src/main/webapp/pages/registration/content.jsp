<%@page contentType="text/html; charset=UTF-8" language="java"%>

<head>
    <style>
        <%@include file="../../resources/css/pre/reg.css"%>
    </style>
</head>

<%
    request.setCharacterEncoding("UTF-8");
%>

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
        <input id="btn_reg" type="button" value="зарегистрироваться" class="buttons"/>
        <div class="separator"></div>
        <input type="button" name="btn_back" value="назад" class="buttons"
               onclick="window.location.href='<%=request.getContextPath()%>/auth'"/>
    </div>
</form>

<script>
    $('#btn_reg').click(function(event){
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
                displayErrorsToForm('#reg_form', data.responseJSON);
            }
        });
    });
</script>