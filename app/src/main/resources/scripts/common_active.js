// Закрыть меню профиля при нажатии на любой элемент кроме layout_profile_name и его подэлементов
$(document).click(function(event){
    if($(event.target).closest($('.layout_profile_name')).length)
        return;

    $('.submenu_profile').fadeOut('fast');
});

// Открыть меню профиля при нажатии кнопки .layout_profile_name
$(document).ready(function(){
    $('.layout_profile_name').click(function(event){
        $('.submenu_profile')
            .css('display', 'block')
            .css('visibility', 'visible');
    });
});