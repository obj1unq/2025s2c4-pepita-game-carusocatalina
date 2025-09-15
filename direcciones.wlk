
// direcciones
object izquierda {
    method siguiente(posicion) = posicion.left(1)
    method borde() = game.at(0, y)
}
object derecha {
    method siguiente(posicion) = posicion.right(1)
    method borde() = game.at(game.width(), y)
}
object abajo {
    method siguiente(posicion) = posicion.down(1)
    method borde() = game.at(x, 0)
}
object arriba {
    method siguiente(posicion) = posicion.up(1)
    method borde() = game.at(x, game.height())
}

