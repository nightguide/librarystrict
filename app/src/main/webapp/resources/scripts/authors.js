$(document).ready(function(){
    $('.all_letter_authors').hover(
        function(){
            $(this)
                .css('opacity', '1')
                .css('color', '#f9c80e');
        },

        function(){
            $(this)
                .css('opacity', '0.5')
                .css('color', '#59328f');
        }
    );
});