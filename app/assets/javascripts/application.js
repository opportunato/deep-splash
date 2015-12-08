// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require turbolinks
//= require_tree .

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