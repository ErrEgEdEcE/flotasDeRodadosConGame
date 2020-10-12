import colores.*
object trafic {
	var property interior = interiorPopular
	var property motor = motorBataton
	
	method color() { return blanco}
	method capacidad() {return interior.capacidad()}
	method velocidadMaxima() {return motor.velocidadMaxima()}
	method peso() {return 4000 + interior.peso() + motor.peso()}
}

object interiorComodo {
	method capacidad() {return 5}
	method peso() {return 700}
	method velocidadMaxima() {}
}

object interiorPopular {
	method capacidad() {return 12}
	method peso() {return 1000}
	method velocidadMaxima() {}
}

object motorPulenta {
	method peso() {return 800}
	method velocidadMaxima() {return 130}
	method capacidad() {}
}

object motorBataton {
	method peso() {return 500}
	method velocidadMaxima() {return 80}
	method capacidad() {}
}