import comidas.*
object pepita {
	var position = game.at(3, 4)
	var energia = 100

	method position(_position) {
		position = _position
	} 
	method position() = position
	method text() = "Aqui estoy"
	method comer(comida) {
		energia = energia + comida.energiaQueOtorga()
	}

	method volar(kms) {
		energia = energia - 10 - kms 
	}
	
	method energia() {
		return energia
	}

	//metodo para dejar a objeto arriba
	method redibujar() {
		game.removeVisual(self)
		game.addVisual(self)
	}
}



