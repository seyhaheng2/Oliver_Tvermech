(function( $ ){
 $(document).ready(function(){
  var isMobile = /Android|webOS|iPhone|iPad|iPod|BlackBerry/i.test(navigator.userAgent) ? true : false;
// if(!isMobile) {

 $('.bgscroll').each(function(){
 var $div = $(this);
  var $dataScroll = $(this).data('scroll');
  var $dataAmount = $(this).data('amount');
  var $dur = $(this).data('duration');
  var $eas = $(this).data('easing');
  if(! $dataScroll  || $dataScroll == "" || $dataScroll === null){$dataScroll = '0.1'};
  if(! $dataAmount  || $dataAmount == "" || $dataAmount === null){$dataAmount = '50%'};
  if(! $dur  || $dur == "" || $dur === null){$dur = '1'};
  if(! $eas  || $eas == "" || $eas === null){$eas = 'linear'};

    bg = $div.css('background-image');
  if (bg) {
    var src = bg.replace(/(^url\()|(\)$|[\"\'])/g, ''),
      $img = $('<img>').attr('src', src).on('load', function() {

        // do something, maybe:

         $div.parallax($dataAmount, $dataScroll, true, $dur, $eas);

      });
  }
});

//};
//end not is mobile

 });
})(jQuery);