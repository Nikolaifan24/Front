package com.mintic.tiendafront.client;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import com.mintic.tiendafront.dto.ClienteDto;
import com.mintic.tiendafront.dto.ProductoDto;
import com.mintic.tiendafront.dto.VentaDto;
import com.mintic.tiendafront.dto.VentaResponse;

public interface IVenta {
	
	public ProductoDto getProduct (Long codigoProducto);

	public VentaDto calcularTotalVenta(Map<ProductoDto, Integer> productosMap);

	public List<VentaResponse> getVentas();

}
