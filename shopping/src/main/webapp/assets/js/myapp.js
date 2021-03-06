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
		$('#listProducts').addClass('active');
		break;
	case 'Manage Products':
		$('#manageProducts').addClass('active');
		break;
	default:
		if (menu == Home)
			break;
		$('#listProducts').addClass('active');
		$('#a_' + menu).addClass('active');
		break;

	}

	// code for jquery DataTable

	var jsonUrl = '';
	if (window.categoryId == '') {
		jsonUrl = window.contextRoot + '/json/data/all/products';

	} else {

		jsonUrl = window.contextRoot + '/json/data/category/'
				+ window.catgortId + '/products';
	}

	var $table = $('#productListTable')
	// execute below code only where we have this table

	if ($table.length) {

		// console.log('Inside the Table');

		$table
				.DataTable({

					lengthMenu : [
							[ 3, 5, 10, -1 ],
							[ '3 Records', '5 Records', '10 Records',
									'ALL Records' ] ],
					pageLength : 5,
					ajax : {

						url : jsonUrl,
						dataSrc : ''
					},

					columns : [
							{
								data : 'code',
								mRender : function(data, type, row) {

									return '<img src="' + window.contextRoot
											+ '/resources/images/' + data
											+ '.jpg" class="dataTableImg"/>'
								}
							},
							{
								data : 'name'

							},
							{
								data : 'brand'

							},
							{
								data : 'unitPrice',
								mRender : function(data, type, row) {

									return 'Rs:' + data
								}

							},
							{
								data : 'quantity',
								mRender : function(data, type, row) {
									if(data<1){
										
										return '<span style="color:red">Out Of Stock</span>';
									}
									return data;
								}

							},
							{
								data : 'id',
								mRender : function(data, type, row) {
									var str = '';
									str += '<a href="'
											+ window.contextRoot
											+ '/show/'
											+ data
											+ '/product" class="btn btn-primary "><span class="glyphicon glyphicon-eye">View</span></a>';
									if(row.quantity  < 1){
										str += '<a href="javascript.void(0)" class="btn btn-success disabled"><span class="glyphicon glyphicon-shopping-cart">ADD</span></a>';
									
										
									}else{
									
									str += '<a href="'
											+ window.contextRoot
											+ '/cart/add/'
											+ data
											+ '/product" class="btn btn-success"><span class="glyphicon glyphicon-shopping-cart">ADD</span></a>';
									
									
									}
									return str;
								}

							},

					]
				});
	}
	
	//dismissing the alert after 3 seconds
	
	var $alert =$('.alert');
	if($alert.length){
		
		setTimeot(function(){
			
			$alert.fadeOut('slow');
		},3000)
		
	}
	
	

});