package com.mintic.tiendafront;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;

import com.mintic.tiendafront.client.IProducto;
import com.mintic.tiendafront.client.IVenta;
import com.mintic.tiendafront.dto.ClienteDto;
import com.mintic.tiendafront.dto.ProductoDto;

@Controller
public class ControladorVentas {
	
	@Autowired
	IVenta iVenta;
	IProducto iProducto;
	/*
	@GetMapping("/cliente")
	public String buscarClientePorCedula(Model model,  @RequestParam(value = "clienteDocumento", required = false) String clienteDocumento) {
		
		ClienteDto cliente = iVenta.buscarClienteDocumento(clienteDocumento);
		model.addAttribute("cliente", cliente);
		
		
		return "cliente";
		
	}
	*/
	/*
	@GetMapping("/producto")
	public String buscarProducto(Model model, @PathVariable(name = "codigoProducto") Long codigoProducto) {
		ProductoDto producto = iProducto.buscarProductoPorCodigo(codigoProducto);
		model.addAttribute("producto", producto);
		return "producto";
	}
	*/
	
}
