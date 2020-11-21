<?php include "./templates/top.php"; ?>

<?php include "./templates/navbar.php"; ?>

<body background="templates/fondo_admin.jpg">

<div class="container">
	<div class="row justify-content-center" style="margin:100px 0;">
		<div class="col-md-4">
			<h4>Registro de administrador</h4>
			<p class="message"></p>
			<form id="admin-register-form">
			  <div class="form-group">
			    <label for="name">Nombre</label>
			    <input type="text" class="form-control" name="name" id="name" placeholder="Ingresar nombre">
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
			    <label for="cpassword">Confirmar contraseña</label>
			    <input type="password" class="form-control" name="cpassword" id="cpassword" placeholder="Contraseña">
			  </div>
			  <input type="hidden" name="admin_register" value="1">
			  <button type="button" class="btn btn-primary register-btn">Registrarse</button>
			</form>
		</div>
	</div>
  </div>


</body>


<?php include "./templates/footer.php"; ?>

<script type="text/javascript" src="./js/main.js"></script>
