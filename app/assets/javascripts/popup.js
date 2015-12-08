$(function() {
  var $aboutLink = $('.about-link'),
      $body = $('body'),
      $aboutPopup = $('.about-popup'),
      $overlay = $('.overlay');

  $aboutLink.on('click', function(event) {
    event.preventDefault();
    event.stopPropagation();
    $body.addClass('no-scroll');
    $aboutPopup.addClass('active');
  });

  $overlay.on('click', function(event) {
    $body.removeClass('no-scroll');
    $aboutPopup.removeClass('active');
  });
});