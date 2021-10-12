package com.mintic.tiendafront.client;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.reactive.function.client.WebClient;
import org.springframework.web.reactive.function.client.WebClientResponseException;

import com.mintic.tiendafront.dto.ClienteDto;
import com.mintic.tiendafront.dto.UsuarioResponse;

import reactor.core.publisher.Mono;

@Service
public class ClienteServicio implements ICliente {
	
	private static final String URL = "http://localhost:8090/tiendagenerica/v1";

	@Autowired
	private WebClient.Builder webClient;

	@Override
	public int BorrarCliente(int id) {
		try {

			Mono<Integer> response = webClient.build().delete().uri(URL + "/cliente/" + id)
					.retrieve().bodyToMono(Integer.class);

			return response.block();

		} catch (WebClientResponseException e) {
			e.getMessage();
			System.out.println("---->" + e.getMessage());
			return 0;
		}
	}

	@Override
	public ClienteDto BuscarClientePorId(int Id) {
		
		try {

			Mono<ClienteDto> response = webClient.build().get().uri(URL + "/buscarClienteByNumeroDocumento/" + Id)
					.retrieve().bodyToMono(ClienteDto.class);

			return response.block();
		} catch (Exception e) {

			return null;
		}
	}

	@Override
	public List<ClienteDto> ListarClientes() {
		
		try 
		{
			Mono<List> response = webClient.build().get().uri(URL + "/cliente").retrieve().bodyToMono(List.class);

			return response.block();
		} catch (Exception e) {

			return null;
		}
	}

	@Override
	public ClienteDto NuevoCliente(ClienteDto clienteDto) {
		// TODO Auto-generated method stub
		try {

			ClienteDto u = null;
			Mono<ClienteDto> response = webClient.build().post().uri(URL + "/cliente")
					.body(Mono.just(clienteDto), ClienteDto.class).retrieve().bodyToMono(ClienteDto.class);

			u = response.block();
			System.out.println("---->" + u);
			return u;

		} catch (WebClientResponseException e) {
			e.getMessage();
			System.out.println("---->" + e.getMessage());
			return null;
		}
	}

	@Override
	public ClienteDto ActualizarCliente(int id, ClienteDto clienteDto) {
		// TODO Auto-generated method stub
		
		try {

			ClienteDto u = null;
			Mono<ClienteDto> response = webClient.build().post().uri(URL + "/cliente/" + id)
					.body(Mono.just(clienteDto), ClienteDto.class).retrieve().bodyToMono(ClienteDto.class);

			u = response.block();
			System.out.println("---->" + u);
			return u;

		} catch (WebClientResponseException e) {
			e.getMessage();
			System.out.println("---->" + e.getMessage());
			return null;
		}
		
	}
}
