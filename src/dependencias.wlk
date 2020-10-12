import rodados.*
import trafic.*
import pedidos.*
import colores.*

class Dependencia {
	var property flotaDeRodados = []
	var property cantidadDeEmpleados = 0
	var property pedidos = []
	
	method agregarAFlota(rodado) {
		flotaDeRodados.add(rodado)
	}
	method quitarDeFlota(rodado) {
		flotaDeRodados.remove(rodado)
	}
	method pesoTotalFlota() {
		return flotaDeRodados.sum({ each => each.peso()})
	}
	method estaBienEquipada() {
		return flotaDeRodados.size() >= 3 
		      and flotaDeRodados.all({ each => each.velocidadMaxima() >= 100 })
	}
	method capacidadTotalEnColor(color) {
		return flotaDeRodados.filter({ each => each.color() == color }).sum({ each => each.capacidad()})
	}
	method colorDelRodadoMasRapido() {
		return flotaDeRodados.max({ each => each.velocidadMaxima()}).color()
	}
	method capacidadFaltante() {
		return cantidadDeEmpleados - flotaDeRodados.sum({ each => each.capacidad() })
	}
	method esGrande() {
		return cantidadDeEmpleados >= 40 and flotaDeRodados.size() >= 5
	}
	method totalDePasajerosEnPedidos() {
		return pedidos.sum({ each => each.cantidadDePasajeros()})
	}
	method pedidosQueNoPuedenSatisfacerse() {
		return pedidos.filter({each => not each.puedeSatisfacerlo(flotaDeRodados.anyOne())}) //No pude resolver cómo pasar como parámetro a TODOS los autos de la colección
	}
	method esIncompatibleParaTodos(color) {
		return pedidos.all({each => each.coloresIncompatibles().contains(color)})
	}
	method relajarTodosLosPedidos() {
		pedidos.forEach({each => each.relajar()})
	}
}
