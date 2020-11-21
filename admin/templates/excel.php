
<?php

header('Content-type:application/xls');
header('Content-Disposition: attachment; filename=usuarios.xls');

require_once('constanst..php');
	$conn=new Conexion();
	$link = $conn->conectarse();

	$query="SELECT * FROM user_info";
	$result=mysqli_query($link, $query);
?>
<table border="1">
	<tr style="background-color:red;">
		<th>Id</th>
		<th>Nombres</th>
		<th>Apellidos</th>
		<th>email</th>
		<th>mobil</th>
		<th>Direccion 1</th>
		<th>Direccion 2</th>
	</tr>
	<?php
		while ($row=mysqli_fetch_assoc($result)) {
			?>
				<tr>
					<td><?php echo $row['user_id']; ?></td>
					<td><?php echo $row['first_name']; ?></td>
					<td><?php echo $row['last_name']; ?></td>
					<td><?php echo $row['email']; ?></td>
					<td><?php echo $row['mobile']; ?></td>
					<td><?php echo $row['address1']; ?></td>
					<td><?php echo $row['address2']; ?></td>
				</tr>	

			<?php
		}

	?>
</table>