package com.mintic.tiendafront.client;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.reactive.function.client.WebClient;

public class productoImp implements IProducto {
	
	private static final String URL = "http://localhost:8090/tienda";
	
	@Autowired
	private WebClient.Builder webClient;
	

}
