package com.mintic.tiendafront.client;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.reactive.function.BodyInserters;
import org.springframework.web.reactive.function.client.WebClient;
import org.springframework.web.reactive.function.client.WebClientResponseException;

import com.mintic.tiendafront.dto.ProductoDto;

import reactor.core.publisher.Flux;
import reactor.core.publisher.Mono;

@Service
public class productoImp implements IProducto {
	
	private static final String URL = "http://localhost:8090/tienda";
	
	@Autowired
	private WebClient.Builder webClient;

	@Override
	public List<ProductoDto> getProductos() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void crearProducto(List<ProductoDto> listProductos) {
		try {
			webClient.build().post().uri(URL + "/producto")
				.body(Flux.fromIterable(listProductos), ProductoDto.class)
				.retrieve().bodyToMono(Void.class).block();
			
		} catch (WebClientResponseException e) {
			e.getMessage();
			System.out.println("---->" + e.getMessage());
			
		}
		
	}
	

}
