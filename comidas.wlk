import wollok.game.*

object manzana {
	const base= 5
	var madurez = 1
	const property position = game.at (7, 4)

	method image() = "manzana.png"
	method energiaQueOtorga() {
		return base * madurez	
	}
	
	method madurar() {
		madurez = madurez + 1
		//madurez += 1
	}
	method reaccionar() = game.removeVisual(self)

}

object alpiste {
	const property position = game.at (6, 3)

	method image() = "alpiste.png"
	method energiaQueOtorga() {
		return 20
	} 
	method reaccionar() = game.removeVisual(self)// remover objeto, tal vez moverlo fuero del tablero?

}

