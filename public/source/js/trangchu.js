$(function () {
    $('a[href="#home-search-form"]').on('click', function(event) {
        event.preventDefault();
        $('#home-search-form').addClass('open');
        $('#home-search-form > form > input[type="search"]').focus();
    });

    $('#home-search-form, #home-search-form button.close').on('click keyup', function(event) {
        if (event.target == this || event.target.className == 'close' || event.keyCode == 27) {
            $(this).removeClass('open');
        }
    });
});