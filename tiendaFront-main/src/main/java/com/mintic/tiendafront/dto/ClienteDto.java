package com.mintic.tiendafront.dto;

public class ClienteDto {
	
	private int id;
	private int idTipoDocumento;
	private String numeroDocumento;	
	private String direccion;
	private String email;
	private String nombre;
	private String telefono;

	
	public int getid() {
		return id;
	}

	public void setid(int id) {
		this.id = id;
	}

	public int getidTipoDocumento() {
		return idTipoDocumento;
	}

	public void setidTipoDocumento(int idTipoDocumento) {
		this.idTipoDocumento = idTipoDocumento;
	}

	public String getnumeroDocumento() {
		return numeroDocumento;
	}

	public void setnumeroDocumento(String numeroDocumento) {
		this.numeroDocumento = numeroDocumento;
	}

	public String getdireccion() {
		return direccion;
	}

	public void setdireccion (String direccion) {
		this.direccion = direccion;
	}

	public String getemail() {
		return email;
	}

	public void setemail(String email) {
		this.email = email;
	}

	public String getnombre() {
		return nombre;
	}

	public void setnombre(String nombre) {
		this.nombre = nombre;
	}

	public String gettelefono() {
		return telefono;
	}

	public void settelefono(String telefono) {
		this.telefono = telefono;
	}
}
