<?php 
session_start();
/**
 * 
 */
class Creden_delivery
{
	
	private $con;

	function __construct()
	{
		include_once("Database.php");
		$db = new Database();
		$this->con = $db->connect();
	}


	public function createdeliveryAccount($nombre, $apellidos, $email, $contraseña,$celular,$direccion){
		$q = $this->con->query("SELECT email FROM delivery WHERE email = '$email'");
		if ($q->num_rows > 0) {
			return ['status'=> 303, 'message'=> 'El correo ya existe'];
		}else{
			$contraseña = password_hash($contraseña, PASSWORD_BCRYPT, ["COST"=> 8]);
			$q = $this->con->query("INSERT INTO `delivery`(`nombre`,´apellido´, `email`, `contraseña`, ´celular´, ´direccion´,`is_active`) VALUES ('$nombre','$apellidos','$email','$contraseña','$celular','$direccion','0')");
			if ($q) {
				return ['status'=> 202, 'message'=> 'Delivery creado con éxito'];
			}

		}
	}

	public function logindelivery($email, $contraseña){
		$q = $this->con->query("SELECT * FROM delivery WHERE email = '$email' LIMIT 1");
		if ($q->num_rows > 0) {
			$row = $q->fetch_assoc();
			if (password_verify($contraseña, $row['contraseña'])) {
				$_SESSION['deli_nombre'] = $row['nombre'];
				$_SESSION['deli_id'] = $row['delivery_id'];
				return ['status'=> 202, 'message'=> 'Inicio de sesión exitoso'];
			}else{
				return ['status'=> 303, 'message'=> 'Carga fallida'];
			}
		}else{
			return ['status'=> 303, 'message'=> 'Cuenta aún no creada con este correo electrónico'];
		}
	}

}

//$c = new Credentials();
//$c->createAdminAccount("Rizwan", "rizwan@gmail.com", "12345");

//PRINT_R($c->loginAdmin("rizwan@gmail.com", "12345"));

if (isset($_POST['delivery_register'])) {
	extract($_POST);
	if (!empty($nombre) && !empty($apellidos) &&  !empty($email) && !empty($contraseña) && !empty($ccontraseña) && !empty($celular) && !empty($direccion) ) {
		if ($contraseña == $ccontraseña) {
			$c = new Creden_delivery();
			$result = $c->createdeliveryAccount($nombre,$apellidos ,$email, $contraseña,$celular, $direccion);
			echo json_encode($result);
			exit();
		}else{
			echo json_encode(['status'=> 303, 'message'=> 'la contraseña no coincide']);
			exit();
		}
	}else{
		echo json_encode(['status'=> 303, 'message'=> 'Campos vacíos']);
		exit();
	}
}

if (isset($_POST['delivery_login'])) {
	extract($_POST);
	if (!empty($email) && !empty($contraseña)) {
		$c = new Creden_delivery();
		$result = $c->logindelivery($email, $contraseña);
		echo json_encode($result);
		exit();
	}else{
		echo json_encode(['status'=> 303, 'message'=> 'Campos vacíos']);
		exit();
	}
}


?>