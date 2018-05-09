/* Отображать кнопку "читать полностью", только если комментарий большей установленной высоты */
$(document).ready(function(){
    $('.comment_content').each(function(){
        if($(this).height()>59){
            $(this)
                .css('height', '6rem');
            $(this).siblings('span')
                .css('display','block');
        }
    });
});

/* Действия нажатия на кнпоку "читать полностью" */
$(document).ready(function(){
    $('.comment_show_more').click(function(){
        $(this).parent().siblings('.comment_content')
            .css('height', '100%');
        $(this).css('display', 'none');
    });
});