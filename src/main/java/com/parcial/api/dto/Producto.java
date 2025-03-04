package com.parcial.api.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Producto {

	@NonNull
	private String id;
	@NonNull
	private String nombre;

	private double precio;


}
