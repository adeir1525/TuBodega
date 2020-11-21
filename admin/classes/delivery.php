<?php 
session_start();
/**
 * 
 */
class delivery
{
	
	private $con;

	function __construct()
	{
		include_once("Database.php");
		$db = new Database();
		$this->con = $db->connect();
	}

	public function getdelivery(){
		$query = $this->con->query("SELECT `delivery_id`, `nombre`, `apellidos`, `email`, `celular`, `direccion` FROM `delivery`");
		$ar = [];
		if (@$query->num_rows > 0) {
			while ($row = $query->fetch_assoc()) {
				$ar[] = $row;
			}
			return ['status'=> 202, 'message'=> $ar];
		}
		return ['status'=> 303, 'message'=> 'sin datos del delivery'];
	}

/*
	
if (isset($_POST['GET_DELIVERY'])) {
	$a = new Delivery();
	echo json_encode($a->getdeliveryList());
	exit();
	
}
*/

}


/*$c = new Customers();
echo "<pre>";
print_r($c->getCustomers());
exit();*/

if (isset($_POST["GET_DELIVERY"])) {
	if (isset($_SESSION['admin_id'])) {
		$c = new delivery();
		echo json_encode($c->getdelivery());
		exit();
	}
}

if (isset($_POST["GET_DELIVERY_ORDERS"])) {
	if (isset($_SESSION['admin_id'])) {
		$c = new delivery();
		echo json_encode($c->getdeliveryOrder());
		exit();
	}
}


?>