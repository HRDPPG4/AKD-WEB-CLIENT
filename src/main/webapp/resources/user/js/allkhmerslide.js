

$(document).ready(function(){
	$('#navlist a').click(function(e) {
	    e.preventDefault(); //prevent the link from being followed
	    $('#navlist a').removeClass('selected');
	    $(this).addClass('selected');
	});
});

/*$(document).ready(function(){
	$('.main-category a').click(function(){
		 e.preventDefault();
		$('ul.sub-menus-cates').slideToggle(200);
		 $('.main-category a').removeClass('clicks');
		$(this).addClass('clicks');
	});
});*/
// /////////
$(document).ready(function(){
	var menu ='close';
	$('#myTopnav').click(function(){
	  if (menu=="close") {
	  	$('.menu-basic').addClass("responsive");
	  	
	  	menu="open";
	  }else{
	  	$('.menu-basic').removeClass("responsive");
	  	menu="close";
	  }
	});
});
// ///////////////////////
/*$(document).ready(function(){
	$('ul.tabs li').click(function(){
		var tab_id = $(this).attr('data-tab');

		$('ul.tabs li').removeClass('current');
		$('.tab-content').removeClass('current');
       // alert('hi');
		$(this).addClass('current');
		$("#"+ tab_id).addClass('current');

		alert('he');
	});

});*/
// ///////////////////////////////////
// $(document).ready(function(){
// 	var menu_minimize ='close';
//   $('.nav-minimize').click(function(){
//   	if (menu_minimize=="close") {
//   		$('.left-side-nav').hide('slow');
//   		$('.nav-minimize').css({'left':'100px'},"slow");
  		
//   		menu_minimize ='open';
//   	}else{
//   		$('.left-side-nav').show('slow');
//   		$('.nav-minimize').css({'left':'260px'},"slow");
//   		menu_minimize ='close';
//   	}
//   });
// });
// ///////////////////////////////////
jQuery(document).ready(function($) {
	var my_nav = $('.navbar-sticky'); 
	var my_header=$('.navbar-bg');
//	var my_left_bar =$('.left-side-nav');

	
	// grab the initial top offset of the navigation 
	var sticky_navigation_offset_top = my_nav.offset().top;
	
	// our function that decides weather the navigation bar should have "fixed" css position or not.
	var sticky_navigation = function(){
		var scroll_top = $(window).scrollTop(); // our current vertical position from the top
		
		// if we've scrolled more than the navigation, change its position to fixed to stick to top, otherwise change it back to relative
		if (scroll_top > sticky_navigation_offset_top) { 
			my_nav.addClass( 'stick' );
			my_header.hide();
			// $('.logo-main-menu').show();
			// $('.navbar-collapse .navbar-nav').css({"right":"37px"});
			// $('li.search, span.glyphicon-search').css({"visibility":"visible"});
			



		} else {
			my_nav.removeClass( 'stick' );
			my_header.show();
		
			// $('.logo-main-menu').hide();
			// $('.navbar-collapse .navbar-nav').css({"margin":"0 auto","right":"0px"});
			// $('li.search, span.glyphicon-search').css({"visibility":"hidden"});
		   
		}   
	};

	var initio_parallax_animation = function() { 
		$('.parallax').each( function(i, obj) {
			var speed = $(this).attr('parallax-speed');
			if( speed ) {
				var background_pos = '-' + (window.pageYOffset / speed) + "px";
				$(this).css( 'background-position', 'center ' + background_pos );
			}
		});
	}
	
	// run our function on load
	sticky_navigation();
	
	// and run it again every time you scroll
	$(window).scroll(function() {
		 sticky_navigation();
		 initio_parallax_animation();
	});

});
