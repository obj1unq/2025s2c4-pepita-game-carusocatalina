import pepita.*
import wollok.game.*
object nido {
    const property position = game.at(13, 12)

    method image() = "nido.png"
}

object silvestre {
    const presa = pepita
    method position() = game.at(presa.position().x(), 1)

    method image() = "silvestre.png"
}


