$(document).ready(function(){

	getdelivery();
	getdeliveryOrders();

	function getdelivery(){
		$.ajax({
			url : '../admin/classes/delivery.php',
			method : 'POST',
			data : {GET_DELIVERY:1},
			success : function(response){
				
				console.log(response);
				var resp = $.parseJSON(response);
				if (resp.status == 202) {

					var deliveryHTML = "";

					$.each(resp.message, function(index, value){

						deliveryHTML += '<tr>'+
									          '<td>#</td>'+
									          '<td>'+value.nombre+' '+value.apellidos+'</td>'+
									          '<td>'+value.email+'</td>'+
									          '<td>'+value.celular+'</td>'+
									          '<td>'+value.direccion+ '</td>'+
									       '</tr>'

					});

					$("#delivery_list").html(deliveryHTML);

				}else if(resp.status == 303){

				}

			}
		})
		
	}

	function getdeliveryOrders(){
		$.ajax({
			url : '../admin/classes/delivery.php',
			method : 'POST',
			data : {GET_DELIVERY_ORDERS:1},
			success : function(response){
				
				console.log(response);
				var resp = $.parseJSON(response);
				if (resp.status == 202) {

					var deliveryOrderHTML = "";

					$.each(resp.message, function(index, value){

						deliveryOrderHTML +='<tr>'+
								              '<td>#</th>'+
								              '<td>'+ value.order_id +'</td>'+
								              '<td>'+ value.product_id +'</td>'+
								              '<td>'+ value.product_title +'</td>'+
								              '<td>'+ value.qty +'</td>'+
								              '<td>'+ value.trx_id +'</td>'+
								              '<td>'+ value.p_status +'</td>'+
								            '</tr>';

					});

					$("#delivery_order_list").html(deliveryOrderHTML);

				}else if(resp.status == 303){
					$("#delivery_order_list").html(resp.message);
				}

			}
		})
		
	}


});