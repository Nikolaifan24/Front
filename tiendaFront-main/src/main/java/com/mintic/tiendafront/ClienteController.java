package com.mintic.tiendafront;
//import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mintic.tiendafront.client.ICliente;
import com.mintic.tiendafront.dto.ClienteDto;
import com.mintic.tiendafront.dto.Usuario;
import com.mintic.tiendafront.dto.UsuarioResponse;

@Controller
public class ClienteController {
	
	@Autowired
	ICliente icliente;
	
	@GetMapping("/AgregarCliente")
	public String index() {
		return "AgregarCliente";
	}
	
	@GetMapping("/ActualizarCliente")
	public String index2() {
		return "ActualizarCliente";
	}
	
	@GetMapping("/EliminarCliente/{id}") //cliente
	public String EliminarCliente(Model model, @PathVariable(name = "id") int id) {

		
		icliente.BorrarCliente(id);

		//model.addAttribute("tipoDocumento", cliente.getCliente());
		//model.addAttribute("usuarios", cliente.getcliente());

		return "ListaClientes";
	}
	
	
	////@GetMapping("/usuario")
	//public String usuario(Model model) {

		//model.addAttribute("tipoDocumento", cliente.getTipoDocumento());
		//model.addAttribute("usuarios", cliente.getUsuarios());
		//return "usuario";
	////}
	
	@RequestMapping("/NuevoCliente")
	public String NuevoCliente(ClienteDto clienteDto, BindingResult result, Model model) {
		
		if (result.hasErrors()) {
            return "ListaClientes";
        }
		
		if(clienteDto.getnumeroDocumento() != null) {
			//cliente.setIdTipoDocumento(1);
        	//usuarioRepo.save(usuario);
			icliente.NuevoCliente(clienteDto);
			
            return "redirect:/cliente/NuevoCliente";  //   --> agregar pagina lista clientes       	
        }else {
        	return "NuevoCliente2";	
        }

	}
	
	@PostMapping("/ActualizarCliente/{id}")
	public String ActualizarCliente(Model model, ClienteDto clienteDto, @PathVariable("id") int Id) {

		icliente.ActualizarCliente(Id, clienteDto);
		//model.addAttribute("tipoDocumento", cliente.getTipoDocumento());
		//model.addAttribute("usuarios", cliente.getUsuarios());

		return "ListaCliente";
	}


	@GetMapping("BuscarClientePorId/{id}")
	public String BuscarClientePorId(@PathVariable("id") int Id)
	{
		icliente.BuscarClientePorId(Id);
		
		return "ListaCliente";		
    }
	
	
	@GetMapping("/ListarClientes")
	public String ListarClientes(Model model) {

		icliente.ListarClientes();
		
		return "ListaCliente";
	}

}
