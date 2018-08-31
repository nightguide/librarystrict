<%@page contentType="text/html; charset=UTF-8" language="java"%>

<%
    request.setCharacterEncoding("UTF-8");
%>

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