$(function() {

  $("#toggle").click(function(){
    var $description = $('.description'),
        $toggle = $(this);

    $description.slideToggle( 500, function () {
       $toggle.text(($description.is(':visible') ? 'Hide' : 'Show') + ' description');
    });
  });

  // $("#toggle").click(function(){
  // 	var $description = $('.description');

  // 	if($description.hasClass('hide')){
  //     $(this).text('Hide Description');
  //     $($description).removeClass('hide');
  // 	}else{
  //     $(this).text('Show Description');
  //     $($description).addClass('hide');
  // 	}
  // });

        
  $('.list-group-item').on('click', function() {
    $('.glyphicon', this)
      .toggleClass('glyphicon-chevron-right')
      .toggleClass('glyphicon-chevron-down');
  });

});