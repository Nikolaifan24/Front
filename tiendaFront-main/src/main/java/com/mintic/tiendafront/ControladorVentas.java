package com.mintic.tiendafront;

import java.util.Arrays;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;

import com.mintic.tiendafront.client.IProducto;
import com.mintic.tiendafront.client.IVenta;

import com.mintic.tiendafront.dto.ClienteDto;
import com.mintic.tiendafront.dto.LoginDto;
import com.mintic.tiendafront.dto.ProductoDto;
import com.mintic.tiendafront.dto.ProductoVenta;
import com.mintic.tiendafront.dto.UsuarioResponse;
import com.mintic.tiendafront.dto.VentaDto;
import com.mintic.tiendafront.dto.VentaResponse;

@Controller
public class ControladorVentas {
	
	@Autowired
	IVenta iVenta;
	
	
	
	
	@GetMapping("/venta")
	public String b() {
		return "venta";
	}
	
	
	
	@PostMapping("/venta")
	public String buscarProducto(Model model, ProductoVenta productosVenta) {
		/*if (codigoProducto != null) {
			ProductoDto producto = iVenta.getProduct(Long.valueOf(codigoProducto));
			CalculoDto calculo = iCalculo.addProduct(Long.valueOf(codigoProducto));
			model.addAttribute("producto", producto);
			model.addAttribute("calculo", calculo);
		}*/
		
		ProductoDto producto1 = iVenta.getProduct(Long.valueOf(productosVenta.getCodigoProducto1()));
		ProductoDto producto2 = iVenta.getProduct(Long.valueOf(productosVenta.getCodigoProducto2()));
		ProductoDto producto3 = iVenta.getProduct(Long.valueOf(productosVenta.getCodigoProducto3()));
		
		Map<ProductoDto, Integer> productosMap = new LinkedHashMap<>();
		productosMap.put(producto1,  productosVenta.getCantidadProducto1());
		productosMap.put(producto2,  productosVenta.getCantidadProducto2());
		productosMap.put(producto3,  productosVenta.getCantidadProducto3());
		VentaDto totalVenta = iVenta.calcularTotalVenta(productosMap);
		
		model.addAttribute("totalVenta", totalVenta);
		
		return "venta";
	}
	
	@GetMapping("/reporteVenta")
	public String reporteVenta(Model model) {
		List<VentaResponse> ventaResponse = iVenta.getVentas();
		model.addAttribute("ventas", ventaResponse);
		
		if(model.getAttribute("ventas") == null) 
		{
			model.addAttribute("mensaje", "No hay datos para mostrar");
		}	
		
		return "reporteVenta";
	}
	
	
	
	
}
