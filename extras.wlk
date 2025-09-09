import pepita.*
object nido {
    const property position = game.at(game.width(), game.height())

    method image() = "nido.png"
}

object silvestre {
    const presa = pepita
    method position() = game.at(presa.position().x(), 1)

    method image() = "silvestre.png"
}

