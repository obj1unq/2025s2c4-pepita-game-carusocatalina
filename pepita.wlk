import extras.*
import wollok.game.*
import comidas.*
import direcciones.*

object pepita {
	var property position = game.at(3, 4) // game.at crea una posicion cada vez, es malo para el rendimiento
	var energia = 100
	const joules = 9

	method image() = "pepita" + self.resultado() + ".png"

	method text() = "Energia: \n" + energia
	method comer(comida) {
		energia = energia + comida.energiaQueOtorga()
	}

	method volar(kms) {
		energia = energia - self.energiaNecesaria(kms) 
	}
	method energiaNecesaria(kms) = joules * kms

	method resultado() {
		return if (self.estaSobre(silvestre) || !(self.puedeMover())) {"-gris"}
			else if (self.estaSobre(nido)) {
				"-grande" 
			}
				else {""}
	}
	method estaSobre(elemento) {
		return position == elemento.position()
	}
	method energia() = energia

	//metodo para dejar a objeto arriba
	method redibujar() {
		game.removeVisual(self)
		game.addVisual(self)
	}
	
	method mover(direccion) {
		if (self.puedeMover()){
			self.volar(1)
			position = direccion.siguiente(position)}
			else {
				self.perder()
			}
	}
	method perder(){
		game.say(self, "Perdí!")
		game.schedule( 2000, { game.stop() })
	}
	//method gane(){
	//	game.say(self, "Gané!")
	//	game.schedule( 2000, { game.stop() })
	//}

	method puedeMover() {
		return energia >= self.energiaNecesaria(1) && not self.estaSobre(silvestre)
	}
	method loQueHayAca() = game.uniqueCollider(self) // game.uniqueCollider devuelve el objeto que se le superpone a uno
	
	method interactuarComidas() {
		const comida = self.loQueHayAca() 
		self.comer(comida)
		comida.reaccionar()
	}

	method caer(direccion) {
		position = direccion.siguiente(position)
	}
	
	method estaEnElBorde() = position == arriba.borde() || position == abajo.borde() || position == izquierda.borde() || position == derecha.borde()

}