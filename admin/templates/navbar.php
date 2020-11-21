 
 
 
 <nav class="navbar navbar-dark fixed-top bg-primary flex-md-nowrap p-0 shadow">
 <a href="#" class="navbar-brand">      </a>
<!--				<img src="templates/LOGO9.png" width="150" height="55" 
                 alt="Texto alternativo" longdesc="Descripcion larga" /> -->
  
 <!-- <input class="form-control form-control-dark w-100" type="text" placeholder="Buscar" aria-label="Search"> -->
  <ul class="navbar-nav px-3">
    <li class="nav-item text-nowrap">
    	<?php
    		if (isset($_SESSION['admin_id'])) {
    			?>
    				<a class="nav-link" href="../admin/salir.php">Salir</a>
    			<?php
    		}else{
    			$uriAr = explode("/", $_SERVER['REQUEST_URI']);
    			$page = end($uriAr);
    			if ($page === "login.php") {
    				?>
	    				<a class="nav-link" href="../admin/registrar.php">Registrate</a>
	    			<?php
    			}else{
    				?>
	    				<a class="nav-link" href="../admin/login.php">Login</a>
	    			<?php
    			}


    			
    		}

    	?>
      
    </li>
  </ul>
</nav>