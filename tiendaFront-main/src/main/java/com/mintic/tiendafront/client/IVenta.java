package com.mintic.tiendafront.client;

import java.util.LinkedHashMap;
import java.util.Map;

import com.mintic.tiendafront.dto.ClienteDto;
import com.mintic.tiendafront.dto.ProductoDto;
import com.mintic.tiendafront.dto.VentaDto;

public interface IVenta {
	
	public ProductoDto getProduct (Long codigoProducto);

	public VentaDto calcularTotalVenta(Map<ProductoDto, Integer> productosMap);

}
