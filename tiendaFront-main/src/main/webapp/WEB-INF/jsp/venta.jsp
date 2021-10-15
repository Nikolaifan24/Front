<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ventas</title>
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
				<li class="nav-item"><a class="nav-link" href="/producto">Productos</a></li>

				<li class="nav-item"><a class="nav-link" href="/venta">Ventas</a></li>

				<li class="nav-item"><a class="nav-link" href="#">Reportes</a></li>
			</ul>

		</div>
	</nav>
	<br>
	<h1> Ventas</h1>

	<div class="container overflow-hidden">

		<div class=" col-xl-2 col-lg-3 col-md-4 col-sm-6" id="formulario">
			<form method="post" action="/producto">		

				<div class="container overflow-hidden">
				<div class="form-group">
					<input type="hidden" name="id" value="${producto.id}">

					<label for="codigo"> codigo:</label><input type="text"
						name="codigoProducto" id="codigo"
						value="${producto.codigoProducto}" class="form-control" />
				</div>
				
				<div class="form-group">
					<label>iva compra:</label> <input type="text" name="ivaCompra" 
					class="form-control"
						value="${producto.ivaCompra}" />
				</div>
				
				<div class="form-group">
					<label>id Proveedor:</label><input type="text" name="idProveedor"
						class="form-control" value="${producto.idProveedor}" />
				</div>
				
				<div class="form-group">
					<label>nombre producto</label><input type="text" name="nombreProducto"
						class="form-control" value="${producto.nombreProducto}" />
				</div>			
				
				
				<div class="form-group">
					<label>precio compra</label> <input type="text" name="precioCompra"
						class="form-control" value="${producto.precioCompra}" />
				</div>
				
				<div class="form-group">
					<label>precio venta</label> <input type="text" name="precioVenta"
						class="form-control" value="${producto.precioVenta}" />
				</div>
				
				
				
				</div>
				<br>
				<div class="btn-group" role="group" aria-label="Basic example">
				<button type="submit" class="btn btn-primary" formmethod="post" >Crear Cliente</button>
				<a type="button" class="btn btn-secondary" href= "/producto" >Consultar Producto</a>
		 		</div>
				
				
			</form>
					
		</div>
		<br> 
		<br>	
		<div style="color: red">${mensaje}</div>			
		
    <table class="table">
			<thead>
				<tr>
					<th>#</th>
					<th>codigo producto</th>
					<th>iva compra</th>
					<th>id proveedor</th>
					<th>nombre producto</th>
					<th>precio compra</th>
					<th>precio venta</th>
					
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${producto}" var="producto">
					<tr style=" color: #FFF35F"> 
						<td>${producto.id}</td>
						<td>${producto.codigoProducto}</td>
						<td>${producto.ivaCompra}</td>
						<td>${producto.idProveedor}</td>
						<td>${producto.nombreProducto}</td>
						<td>${producto.precioCompra}</td>
						<td>${producto.precioVenta}</td>
						
				</c:forEach>
			</tbody>
		</table>
	</div>
	
</body>
</html>