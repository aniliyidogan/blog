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
// $(document).ready(ready);
// $(document).on('page:load', ready);
//
//= require turbolinks
//= require jquery
//= require jquery.turbolinks
//= require jquery_ujs
//= require materialize.min
//= require social-share-button
//= require froala_editor.min.js


$(document).ready(function(){
	//Check to see if the window is top if not then display button
	$(window).scroll(function(){
		if ($(this).scrollTop() > 900 ) {
			$('.scrollToTop').fadeIn();
		} else {
			$('.scrollToTop').fadeOut();
		}
	});
	//Click event to scroll to top
	$('.scrollToTop').click(function(){
		$('html, body').animate({scrollTop : 0},1000);
		return false;
	});
});

$(document).ready(function() {
  $('input#input_text, textarea#textarea1').characterCounter();
});

$(document).ready(function(){
  $('.parallax').parallax();
});

$(document).ready(function(){
  // the "href" attribute of .modal-trigger must specify the modal ID that wants to be triggered
  $('.modal-trigger').leanModal();
});

$(document).on('ready page:change', function() {
  Waves.displayEffect();
});
