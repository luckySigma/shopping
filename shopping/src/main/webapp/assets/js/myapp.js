$(function() {
	// active menu
	switch (menu) {
	case 'About Us':
		$('#about').addClass('active');
		break;
	case 'Contact Us':
		$('#contact').addClass('active');
		break;
	case 'All Products':
		$('#list Products').addClass('active');
		break;
	default:
		$('#list Products').addClass('active');
		$('#a_'+ menu).addClass('active');
		break;

	}

});