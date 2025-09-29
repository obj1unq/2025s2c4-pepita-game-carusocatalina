import wollok.game.*
import pepita.*
import extras.*
import comidas.*
import direcciones.*

object nivel1{
    method inicializar(){
		const muros = (3..7).map {y => new Muro(position = game.at(3,y))}
		muros.forEach {muro => game.addVisual(muro)}
		const personajes = [ nido, silvestre, manzana, pepita ]
		personajes.forEach {el => game.addVisual(el)}
		
        game.onTick(8000, "gravedad", { pepita.caerSiPuede() })

    	keyboard.up().onPressDo({pepita.mover(arriba)})
    	keyboard.down().onPressDo({pepita.mover(abajo)})
    	keyboard.left().onPressDo({pepita.mover(izquierda)})
    	keyboard.right().onPressDo({pepita.mover(derecha)})

//    	keyboard.c().onPressDo({pepita.interactuarComidas()})

        game.onCollideDo(pepita, {algo => algo.colisionCon(pepita)})
    }
	
	method perder(){
		game.say(self, "Perdiste, presiona la R para reiniciar")
		keyboard.r().onPressDo {
			game.clear()
			self.inicializar()
			pepita.inicializar()
		}
	}
}