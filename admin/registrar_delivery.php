<?php include "./templates/top.php"; ?>

<?php include "./templates/navbar.php"; ?>

<body background="templates/f11.jpg">

<div class="container">
	<div class="row justify-content-center" style="margin:100px 0;">
		<div class="col-md-4">
			<h4>Registro de Delivery</h4>
			<p class="message"></p>
			<form id="delivery-register-form">
			  <div class="form-group">
			    <label for="nombre">Nombre</label>
			    <input type="text" class="form-control" name="nombre" id="nombre" placeholder="Ingresar nombre">
			  </div>
			  <div class="form-group">
			    <label for="apellidos">Apellidos</label>
			    <input type="text" class="form-control" name="apellidos" id="apellidos" placeholder="Ingresar apellidos">
			  </div>
			  <div class="form-group">
			    <label for="email">Correo electronico</label>
			    <input type="email" class="form-control" name="email" id="email" placeholder="Ingresar correo">
			    <small id="emailHelp" class="form-text text-muted">Nunca compartiremos su correo electrónico con nadie más</small>
			  </div>
			  <div class="form-group">
			    <label for="password">contraseña</label>
			    <input type="password" class="form-control" name="password" id="password" placeholder="Contraseña">
			  </div>
			  <div class="form-group">
			    <label for="ccontraseña">Confirmar contraseña</label>
			    <input type="password" class="form-control" name="ccontraseña" id="ccontraseña" placeholder="Contraseña">
			  </div>
			  <div class="form-group">
			    <label for="celular">celular</label>
			    <input type="text" class="form-control" name="celular" id="celular" placeholder="Ingresar celular">
			  </div>
			  <div class="form-group">
			    <label for="direccion">Direcccion</label>
			    <input type="text" class="form-control" name="direccion" id="direccion" placeholder="Ingresar direccion">
			  </div>
			  <input type="hidden" name="delivery_register" value="1">
			  <button type="button" class="btn btn-primary register-btn">Registrarse</button>
			</form>
		</div>
	</div>
  </div>


</body>


<?php include "./templates/footer.php"; ?>

<script type="text/javascript" src="./js/main_delivery.js"></script>
