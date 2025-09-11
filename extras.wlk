import pepita.*
import wollok.game.*
object nido {
    const property position = game.at(8, 8)

    method image() = "nido.png"
    method resultado() = pepita.llegada()
}

object silvestre {
    const presa = pepita
    method position() = game.at(presa.position().x(), 1)

    method image() = "silvestre.png"
    method resultado() = pepita.atrapada()

}

