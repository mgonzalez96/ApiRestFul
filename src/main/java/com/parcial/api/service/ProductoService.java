package com.parcial.api.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.parcial.api.dto.Producto;

import reactor.core.publisher.Flux;

@Service
public class ProductoService {

	private List<Producto> productos = List.of(new Producto("1", "Laptop", 1200.0), 
			                                   new Producto("2", "Mouse", 25.0),
			                                   new Producto("3", "Teclado", 45.0));

	public Flux<Producto> obtenerProductos() {
		return Flux.fromIterable(productos);
	}

}
