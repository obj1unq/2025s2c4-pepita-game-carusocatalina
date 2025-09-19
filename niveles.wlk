import wollok.game.*
import pepita.*
import extras.*
import comidas.*
import direcciones.*

object nivel1{
    method inicializar(){
    	game.addVisual(nido)
		game.addVisual(muro)
    	game.addVisual(silvestre)
		game.addVisual(manzana)
        game.onTick(8000, "gravedad", { pepita.caerSiPuede() })
    	game.addVisual(pepita)

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