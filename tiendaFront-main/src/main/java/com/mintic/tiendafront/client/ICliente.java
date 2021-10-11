package com.mintic.tiendafront.client;

import java.util.List;

import com.mintic.tiendafront.dto.ClienteDto;


public interface ICliente {
	
	public ClienteDto BuscarClientePorId(int Id);

	public List<ClienteDto> ListarClientes();

	public ClienteDto NuevoCliente(ClienteDto clienteDto);

	public ClienteDto ActualizarCliente(int id, ClienteDto clienteDto);

	public int BorrarCliente(int id);

}
