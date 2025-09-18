import pepita.*
import wollok.game.*
object nido {
    const propietario = pepita
    const property position = game.at(8, 8)

    method image() = "nido.png"
    method reaccion() = propietario.gane()
}

object silvestre {
    const presa = pepita
    method position() = game.at(presa.position().x(), 0)

    method image() = "silvestre.png"
    method reaccion() = presa.perder()
}


