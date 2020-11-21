<?php include "./templates/top.php"; ?>

<?php include "./templates/navbar.php"; ?>


<body background="templates/fondo_admin.jpg">


<div class="container">
	<div class="row justify-content-center" style="margin:100px 0;">
		<div class="col-md-4">
			<h3>Administrador Login</h3>
			<p class="message"></p>
			<form id="admin-login-form">
			  <div class="form-group">
			    <label for="email">Correo electronico</label>
			    <input type="email" class="form-control" name="email" id="email"  placeholder="Ingresar correo">
			    <small id="emailHelp" class="form-text text-muted">Nunca compartiremos su correo electrónico con nadie más</small>
			  </div>
			  <div class="form-group">
			    <label for="password">Contraseña</label>
			    <input type="password" class="form-control" name="password" id="password" placeholder="Contraseña">
			  </div>
			  <input type="hidden" name="admin_login" value="1">
			  <button type="button"  class="btn btn-primary login-btn">Ingresar</button>
			</form>
		</div>
	</div>
</div>



</body>

<?php include "./templates/footer.php"; ?>

<script type="text/javascript" src="./js/main.js"></script>
