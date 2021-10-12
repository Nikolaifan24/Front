<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Actualizar Cliente</title>
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
			<h1>Actualizar Cliente</h1>
			
			<form action="#"
			th:action="@{/usuarios/actualizarUsuario/{id}(id=${usuario.id})}"
			th:object="${usuario}" method="post">

			<div class="mb-3">
				<label for="nombre" class="form-label">Nombre</label> <input
					type="text" th:field="*{nombre}" id="nombre" placeholder="Nombre"
					class="form-control"> <span
					th:if="${#fields.hasErrors('nombre')}" th:errors="*{nombre}"></span>
			</div>

			<div class="mb-3">
				<label for="cedula" class="form-label">Cedula</label> <input
					type="text" th:field="*{numeroDocumento}" id="cedula"
					placeholder="Cedula" class="form-control"> <span
					th:if="${#fields.hasErrors('numeroDocumento')}"
					th:errors="*{numeroDocumento}"></span>
			</div>

			<div class="mb-3">
				<label for="email" class="form-label">Email</label> <input
					type="text" th:field="*{email}" id="email" placeholder="Email"
					class="form-control"> <span
					th:if="${#fields.hasErrors('email')}" th:errors="*{email}"></span>
			</div>

			<div class="mb-3">
				<label for="nombreUsuario" class="form-label">Usuario</label> <input
					type="text" th:field="*{nombreUsuario}" id="nombreUsuario"
					placeholder="Usuario" class="form-control"> <span
					th:if="${#fields.hasErrors('nombreUsuario')}"
					th:errors="*{nombreUsuario}"></span>
			</div>

			<div class="mb-3">
				<label for="password" class="form-label">Contraseña</label> <input
					type="password" th:field="*{password}" id="password"
					placeholder="Contraseña" class="form-control"> <span
					th:if="${#fields.hasErrors('password')}" th:errors="*{password}"></span>
			</div>

			<input type="submit" class="btn btn-primary" value="Actualizar">
		</form>
			
			
			
			
			<form action="/ActualizarCliente/{id}" method="post">

				<div class=" col-xl-4 col-lg-3 col-md-4 col-sm-6" id="formulario">
					<div class="form-group">
					<input type="hidden" name="id" value="${actualizarCliente.id}">
						<label for="idTipoDocumento">Tipo de Documento</label>
						<select class="form-control" name="idTipoDocumento" id="idTipoDocumento">
						<option >Seleccione un Tipo</option>
						  <option value="1">${actualizarCliente.tipo}</option>
						  						  
						</select>
						<!--<input type="text" class="form-control" name="idTipoDocumento" id="idTipoDocumento">-->
					</div>

					<div class="form-group">
						<label for="numeroDocumento">numeroDocumento</label> 
						<input type="text" class="form-control" name="numeroDocumento" id="numeroDocumento" value="${actualizarCliente.numeroDocumento}">
					</div>
					
					<div class="form-group">
						<label for="direccion">direccion</label> 
						<input type="text" class="form-control" name="direccion" id="direccion" value="${actualizarCliente.direccion}">
					</div>
					
					<div class="form-group">
						<label for="email">email</label> 
						<input type="email" class="form-control" name="email" id="email" value="${actualizarCliente.email}">
					</div>
					
					<div class="form-group">
						<label for="nombre">nombre</label> 
						<input type="text" class="form-control" name="nombre" id="nombre" value="${actualizarCliente.nombre}">
					</div>
					
					<div class="form-group">
						<label for="telefono">telefono</label> 
						<input type="text" class="form-control" name="telefono" id="telefono" value="${actualizarCliente.telefono}">
					</div>
					<div style="color: red">${error}</div>
					<br>
					<button type="submit" class="btn btn-primary">Actualizar Cliente</button>
					<br><br>
				

				</div>
				
			</form>
		</div>
	</div>



</body>
</html>