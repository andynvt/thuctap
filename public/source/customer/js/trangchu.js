// search form
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
// end search form

// open/close info box
$(function () {
    var i = 1;
    $('.home-minimize-btn').on('click', function(){
      if(i == 1){
        $(".hide-place-info-box").css('transform', 'translateY(150%)');
        $(".home-minimize-btn i").css('transform', 'rotate(-180deg)');
        i = 0;
      }
      else {
        $(".hide-place-info-box").css('transform', 'translateY(0)');
        $(".home-minimize-btn i").css('transform', 'rotate(0deg)');
        i = 1;
      }
    });
});
// end open/close info box