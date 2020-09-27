class Formmacion {
	const locomotoras = []
	const vagones = []
	
	method agregarVagon(vagon) {
		vagones.add(vagon)
	}
	
	method agregarLocomotora(locomotora) {
		locomotoras.add(locomotora)
	}
		
	
}

class Locomotora {
	const property peso = 0
	const property puedeArrastrar = 0
	const velMax = 0
	
	method esEficiente() { return
		puedeArrastrar >= 5 * peso
	}
	
}

class VagonPasajeros {
	const property largo = 0
	const property ancho = 0
	const property tieneBanio = false
	var property estaOrdenado = false

	
	method cantPasajeros() { return
		if (ancho <= 3 and estaOrdenado) { 8 * largo }
		else if (ancho <= 3 and not estaOrdenado ) { 8 * largo - 15 }
		else if (estaOrdenado) { 10 * largo }
		else { 10 * largo - 15 }
	}
	
	method maxCarga() { return
		if (tieneBanio) { 300 }
		else { 800 }
	}
	
	method pesoMax() { return
		2000 + (80 * self.cantPasajeros()) + self.maxCarga()
	}
	
	
}

class VagonCarga {
	const property cargaMaxIdeal = 0
	var property maderasSueltas = 0
	const property tieneBanio = false
	
	method maxCarga() { return
		cargaMaxIdeal - (400 * maderasSueltas)
	}
	
	method pesoMax() { return
		1500 + self.maxCarga()
	}
	
	method cantPasajeros() { return 0 }
	
	
	
}

class VagonDormitorio {
	const property compartimientos = 0
	const property camasPorCompart = 0
	const property tieneBanio = true
	
	method cantPasajeros() { return
		compartimientos * camasPorCompart
	}
	
	method maxCarga() { return 1200 }
	
	method pesoMax() { return 
		4000 + (80 * self.cantPasajeros()) + self.maxCarga()
	}
	
	
	
}