<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Agregar Cliente</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	type = "text/css"
	rel="stylesheet"
 />

<link
	href="CSS/Style.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous"/>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>
<link rel="stylesheet" href="assets/css/css.css" />
</head>
<body>

<div class="container">
		<div class="row">
			<h1>Agregar Cliente</h1>
			<form action="/NuevoCliente" method="post">

				<div class=" col-xl-4 col-lg-3 col-md-4 col-sm-6" id="formulario">
					<div class="form-group">
						<label for="idTipoDocumento">Tipo de Documento</label>
						<select class="form-control" name="idTipoDocumento" id="idTipoDocumento">
						<option >Seleccione un Tipo</option>
						  <option value="1">Cedula</option>
						  <option value="2">Nit</option>						  
						</select>
						<!--<input type="text" class="form-control" name="idTipoDocumento" id="idTipoDocumento">-->
					</div>

					<div class="form-group">
						<label for="numeroDocumento">numeroDocumento</label> 
						<input type="text" class="form-control" name="numeroDocumento" id="numeroDocumento">
					</div>
					
					<div class="form-group">
						<label for="direccion">direccion</label> 
						<input type="text" class="form-control" name="direccion" id="direccion">
					</div>
					
					<div class="form-group">
						<label for="email">email</label> 
						<input type="email" class="form-control" name="email" id="email">
					</div>
					
					<div class="form-group">
						<label for="nombre">nombre</label> 
						<input type="text" class="form-control" name="nombre" id="nombre">
					</div>
					
					<div class="form-group">
						<label for="telefono">telefono</label> 
						<input type="text" class="form-control" name="telefono" id="telefono">
					</div>
					<div style="color: red">${error}</div>
					<br>
					<button type="submit" class="btn btn-primary">Guardar Cliente</button>
					<br><br>
				

				</div>
				
			</form>
		</div>
	</div>
</body>
</html>