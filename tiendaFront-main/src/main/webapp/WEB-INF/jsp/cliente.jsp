<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cliente</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/css.css" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
	
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>
	<link href="style.css" rel="stylesheet" type="text/css" />	
</head>
<body  opacity=0.8>
<body>
<nav class="navbar navbar-expand-lg navbar--dark bg-dark">
		<a class="navbar-brand" href="/menu">Tienda</a>

		<div class="collapse navbar-collapse" id="navbarText">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active"><a class="nav-link" href="/usuario">Usuarios

				</a></li>
				<li class="nav-item"><a class="nav-link" href="/cliente">Clientes</a>
				</li>
				<li class="nav-item"><a class="nav-link" href="/proveedores">Proveedores</a></li>

				<li class="nav-item"><a class="nav-link" href="#">Ventas</a></li>

				<li class="nav-item"><a class="nav-link" href="#">Reportes</a></li>
			</ul>

		</div>
	</nav>
	<br>
	<h1> Cliente</h1>
	
	
	
	
	
	<div class="container">
		<div th:replace="/NavBar" :: navbar></div>
		<div th:switch="${usuarios}">
			<h2 th:case="null">No hay Clientes para mostrar!</h2>
			<div th:case="*">
				<table class="table">
					<thead>
						<tr>
							<th scope="col">Tipo Documento</th>
							<th scope="col">Numero Documento</th>
							<th scope="col">Direccion</th>
							<th scope="col">Email</th>
							<th scope="col">Nombre</th>
							<th scope="col">Telefono</th>
						</tr>
					</thead>
					<tbody>
						<tr th:each="cliente : ${cliente}">
							<td th:text="${cliente.idTipoDocumento}"></td>
							<td th:text="${cliente.numeroDocumento}"></td>
							<td th:text="${cliente.direccion}"></td>
							<td th:text="${cliente.email}"></td>
							<td th:text="${cliente.nombre}"></td>
							<td th:text="${cliente.telefono}"></td>
							<td><a type="button" class="btn btn-secondary" href="ActualizarCliente/{id}(id=${cliente.Id})">Actualizar</a></td>
							<td><a type="button" class="btn btn-danger" href="Eliminarcliente/{id}(id=${cliente.Id})">Eliminar</a></td>
						</tr>
					</tbody>
				</table>
			</div>
			<p>
				<a type="button" class="btn btn-primary"  href="/AgregarCliente">Agregar Cliente</a>
			</p>
		</div>
	</div>
	
	
	
	<div class="container overflow-hidden">
	 <div class="row gy-5">
      <div class="col-6">
        <label for="inputPassword" class="col-sm-2 col-form-label">Cédula</label>
        <div class="col-sm-10">
          <input class="form-control" id="cedula">
        </div>
      </div>
      <div class="col-6">
        <label for="inputPassword" class="col-sm-2 col-form-label">Usuario</label>
        <div class="col-sm-10">
          <input class="form-control" id="usuario">
        </div>
      </div>
      <div class="col-6">
        <label for="inputPassword" class="col-sm-2 col-form-label">Nombre </label>
        <div class="col-sm-10">
          <input class="form-control" id="nombre">
        </div>
      </div>
      <div class="col-6">
        <label for="inputPassword" class="col-sm-2 col-form-label">Contraseña</label>
        <div class="col-sm-10">
          <input class="form-control" id="inputPassword">
        </div>
      </div>
      <div class="col-6">
        <label for="inputPassword" class="col-sm-2 col-form-label">Correo</label>
        <div class="col-sm-10">
          <input class="form-control" id="correo">
        </div>
      </div>
    </div>
  </div>
  <br>
  <br>
  <div class="grid" style="text-align: center ">
    <button onclick="getData()" type="button" class="btn btn-primary g-col-6 g-col-md-4">Consultar</button>
    <button type="button" class="btn btn-secondary g-col-6 g-col-md-4">Crear</button>
    <button type="button" class="btn btn-success g-col-6 g-col-md-4">Actualizar</button>
    <button type="button" class="btn btn-danger g-col-6 g-col-md-4">Borrar</button>

  </div>
	
</body>
</html>