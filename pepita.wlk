import extras.*
import wollok.game.*
import comidas.*
object pepita {
	var property position = game.at(3, 4) // game.at crea una posicion cada vez, es malo para el rendimiento
	var energia = 100

	method image() = "pepita.png" // se mueve pero es visual nomas, no afecta sus mensajes y acciones
	method image(newIm) = newIm
	method text() = "Aqui estoy"
	method comer(comida) {
		energia = energia + comida.energiaQueOtorga()
	}

	method volar(kms) {
		energia = energia - 10 - kms 
	}
	//method resultado(elem) {
	//	return elem.resutado()
	//}
	method atrapada() {
		return self.image("pepita-gris.png")
	}
	method llegada() {
		return self.image("pepita-grande.png")
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



