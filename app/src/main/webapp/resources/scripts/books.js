
/* Действия при наведении мыши на обложку книги */
$(document).ready(function(){
    $('.layout_cover').hover(
        function(){
            var wrapper_download = $('.wrapper_download', $(this));
            var width_cover = $('.cover', wrapper_download).width();
            wrapper_download
                .css('background-color', '#ea3546')
                .css('opacity','1')
                .css('width', width_cover);
            $('.layout_download', wrapper_download)
                .css('visibility', 'visible');
            $('.cover', wrapper_download)
                .css('opacity', '0.5');
        },
        function(){
            $('.wrapper_download', $(this))
                .css('background-color', 'white')
                .css('opacity','1');
            $('.layout_download', $(this))
                .css('visibility', 'hidden');
            $('.cover', $(this))
                .css('opacity', '1');
        }
    );
});