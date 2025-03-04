package com.parcial.api.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.parcial.api.dto.Producto;
import com.parcial.api.service.ProductoService;

import reactor.core.publisher.Flux;

//@RestController
//@RequestMapping("/api/v1")
public class ProductoController {

	/*@Autowired
	ProductoService productoService;

	@GetMapping("/listarProductos")
	public Flux<Producto> listarProductos() {
		return productoService.obtenerProductos();
	}*/

}
