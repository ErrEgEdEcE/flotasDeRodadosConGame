import colores.*
import wollok.game.*

class Corsa {
	var property color 
	var property image = "autitorojo.png"
	var property position = game.origin()
	var property memoriaRecorrido = #{game.origin()}
	var property filasRecorridas = #{}
		
	method capacidad() {return 4}
	method velocidadMaxima() {return 150}
	method peso() {return 1300}
	
	//Intenté hacer un solo método mover(direccion), pero no supe como ingresar en otro objeto (cada direccion) la modificación de la posición
	
	method moverNorte() {
		position = position.up(1)
		memoriaRecorrido.add(position)
		}
	method moverSur() {
		position = position.down(1)
		memoriaRecorrido.add(position)
	}
	method moverEste() {
		position = position.right(1)
		memoriaRecorrido.add(position)
		filasRecorridas.add(position.x())
	}
	method moverOeste() {
		position = position.left(1)
		memoriaRecorrido.add(position)
	}
		
	method pasoPor(posicion) {
		return memoriaRecorrido.contains(posicion)
	}
	method pasoPorFila(numero) {
		return filasRecorridas.contains(numero)
	}
	method recorrioFilas(lista_de_numeros) {
	   return filasRecorridas.intersection(lista_de_numeros) == lista_de_numeros
	}	// La lista se ingresa como set en el parámetro, para que funcione el mensaje intersection
}

class Kwid {
	var property tanqueAdicional
	const property color = azul
	
	method capacidad() {
		return if(tanqueAdicional) {3} else {4} 
	}
	
	method velocidadMaxima() {
		return if (tanqueAdicional) {120} else {110}
	}
	
	method peso() {
		return if(tanqueAdicional) {1350} else {1200}
	}
}

class Especial {
	var property capacidad
	var property velocidadMaxima
	var property peso
	var property color
}
