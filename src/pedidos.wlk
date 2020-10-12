import rodados.*
import trafic.*
import colores.*

class Pedido {
	var property distancia = 0
	var property tiempoMaximo = 0
	var property cantidadDePasajeros = 0
	var property coloresIncompatibles = #{}
	
	method velocidadRequerida() {
		return distancia / tiempoMaximo
	}
	method puedeSatisfacerlo(rodado) {
		return (rodado.velocidadMaxima() - self.velocidadRequerida() >= 10) 
		       and (rodado.capacidad() >= cantidadDePasajeros) and not self.coloresIncompatibles().contains(rodado.color())
	}
	method acelerar() {
		tiempoMaximo -= 1
	}
	method relajar() {
		tiempoMaximo += 1
	}
}
