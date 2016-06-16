
// This is a manifest file that includes javascripts for the tshop template.
//
// The following were the script tags from the <head> of index.html
	//= require tshop/pace.min
 
// The following were the script tags from the end of <body> of index.html
	//= require tshop/jquery.cycle2.min
	//= require tshop/jquery.easing.1.3
	//= require tshop/jquery.parallax-1.1
	//= require tshop/helper-plugins/jquery.mousewheel.min
	//= require tshop/jquery.mCustomScrollbar
	//= require tshop/plugins/icheck-1.x/icheck.min.js
	//= require tshop/grids.js
	//= require tshop/owl.carousel.min
	//= require tshop/select2.min
	//= require tshop/bootstrap.touchspin
	//= require tshop/home

// Include custom script for all pages
	//= require tshop/script


// Here is where you should include any of the extra scripts that are
// called by certain pages of the TSHOP template.
	// category-2 page
		// require tshop/hideMaxListItem-min
		//= require tshop/jquery.scrollme.min
	// product-details-v4 page
		//= require tshop/jquery.zoom.min 
		//= require tshop/plugins/magnific/jquery.magnific-popup.min
		//= require tshop/plugins/rating/bootstrap-rating.min

// Finally, we run any code in this file
	//= require_self



// this script required for subscribe modal
$(window).load(function () {
    // full load
    $('#modalAds').modal('show');
    $('#modalAds').removeClass('hide');
});
