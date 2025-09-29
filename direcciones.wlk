import pepita.*
import wollok.game.*
// direcciones
object izquierda {
    method siguiente(posicion) = posicion.left(1)
    method esElBorde() = game.at(0, pepita.position().y())
    method anterior(posicion) = posicion.right(1) 
}
object derecha {
    method siguiente(posicion) = posicion.right(1)
    method esElBorde() = game.at(game.width(), pepita.position().y())
    method anterior(posicion) = posicion.left(1)
}
object abajo {
    method siguiente(posicion) = posicion.down(1)
    method esElBorde() = game.at(pepita.position().x(), 0)
    method anterior(posicion) = posicion.up(1)
}
object arriba {
    method siguiente(posicion) = posicion.up(1)
    method esElBorde() = game.at(pepita.position().x(), game.height())
    method anterior(posicion) = posicion.down(1)
}

