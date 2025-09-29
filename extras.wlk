import pepita.*
import wollok.game.*
object nido {
    const property position = game.at(8, 8)

    method image() = "nido.png"
    method colisionCon(personaje) = personaje.gane()
}

object silvestre {
    const presa = pepita
    method position() = game.at(presa.position().x(), 0)

    method image() = "silvestre.png"
    method colisionCon(personaje) = personaje.perder()
}

class Muro {
    var property position 
    
    method image() = "muro.png"
    method colisionCon(personaje) = personaje.retrocede()
}

