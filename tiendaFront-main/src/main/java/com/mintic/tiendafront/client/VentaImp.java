package com.mintic.tiendafront.client;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.reactive.function.client.WebClient;

import com.mintic.tiendafront.dto.ClienteDto;

import reactor.core.publisher.Mono;

@Service
public class VentaImp implements IVenta {
	
	private static final String URL = "http://localhost:8090/tienda";
	
	@Autowired
	private WebClient.Builder webClient;


}
