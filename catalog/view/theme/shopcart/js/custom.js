 $(document).ready(function() {
	 
	 if ($.browser.msie && ($.browser.version == 8 || $.browser.version == 7 || $.browser.version == 6)) {
	 }
	 else {
	 
	$(".box-product > div").hover(
  function () {
 
   $(this).siblings().stop().animate({
  opacity: .6

}, 500)
  },
  function () {
  
      $(this).siblings().stop().animate({
  opacity: 1

}, 500)
   
  }
);  
  	$(".product-grid > div, .product-list > div").hover(
  function () {
 
   $(this).siblings().stop().animate({
  opacity: .6
}, 500)
  },
  function () {
  
      $(this).siblings().stop().animate({
  opacity: 1
}, 500)
   
  }
);
  	
	 }
   
  $(".box-category > ul > li a ").hover(function () {
$(this).stop().animate({ left: "5" }, "fast"); },
function () {
$(this).stop().animate({ left: "0" }, "medium");
}); 
  
//carousel image opacity
  $('.jcarousel-skin-opencart img').css('opacity', '0.6');
  
  $('.jcarousel-skin-opencart img').hover(
		  function () {
			  
			   $(this).stop().animate({
			  opacity: 1
			}, 500)
			  },
			  function () {
			  
			      $(this).stop().animate({
			  opacity: 0.6
			}, 500)
			   
			  }
			); 
$("#menu > ul > li").hover(function () {
$(this).children('div').stop(true, true).slideDown('fast', function() {
// Animation complete.
});
; },
function () {
$(this).children('div').stop(true, true).slideUp('medium', function() {
// Animation complete.
});   
 }); 
 
 
 	// Animation for header switchers
$('.switcher').hover(function() {
$(this).find('.option').stop(true, true).slideDown(300);
},function() {
$(this).find('.option').stop(true, true).slideUp(150);
}); 


  
 });

