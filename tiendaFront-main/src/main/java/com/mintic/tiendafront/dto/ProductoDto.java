package com.mintic.tiendafront.dto;

import com.opencsv.bean.CsvBindByName;


public class ProductoDto {
	
	@CsvBindByName(column = "id")
	private Long id;
	
	@CsvBindByName(column = "codigoProducto")
	private Long codigoProducto;
	
	@CsvBindByName(column = "ivacompra")
	private Double ivacompra;

	@CsvBindByName(column = "idProveedor")
	private Long idProveedor;

	@CsvBindByName(column = "nombreProducto")
	private String nombreProducto;
	
	@CsvBindByName(column = "precioCompra")
	private Double precioCompra;
	
	@CsvBindByName(column = "precioVenta")
	private Double precioVenta;

	public ProductoDto() {
		
	}

	public ProductoDto(Long id, Long codigoProducto, Double ivacompra, Long idProveedor, String nombreProducto,
			Double precioCompra, Double precioVenta) {
		super();
		this.id = id;
		this.codigoProducto = codigoProducto;
		this.ivacompra = ivacompra;
		this.idProveedor = idProveedor;
		this.nombreProducto = nombreProducto;
		this.precioCompra = precioCompra;
		this.precioVenta = precioVenta;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Long getCodigoProducto() {
		return codigoProducto;
	}

	public void setCodigoProducto(Long codigoProducto) {
		this.codigoProducto = codigoProducto;
	}

	public Double getIvacompra() {
		return ivacompra;
	}

	public void setIvacompra(Double ivacompra) {
		this.ivacompra = ivacompra;
	}

	public Long getIdProveedor() {
		return idProveedor;
	}

	public void setIdProveedor(Long idProveedor) {
		this.idProveedor = idProveedor;
	}

	public String getNombreProducto() {
		return nombreProducto;
	}

	public void setNombreProducto(String nombreProducto) {
		this.nombreProducto = nombreProducto;
	}

	public Double getPrecioCompra() {
		return precioCompra;
	}

	public void setPrecioCompra(Double precioCompra) {
		this.precioCompra = precioCompra;
	}

	public Double getPrecioVenta() {
		return precioVenta;
	}

	public void setPrecioVenta(Double precioVenta) {
		this.precioVenta = precioVenta;
	}

	
	

}
