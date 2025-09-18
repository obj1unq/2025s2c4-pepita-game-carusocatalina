import wollok.game.*
import pepita.*
import extras.*
import comidas.*
import direcciones.*

object nivel1{
    method inicializar(){
        
    	game.addVisualCharacter(silvestre)
    	game.addVisual(manzana)
        game.onTick(2000, "gravedad", { pepita.caerSiPuede() })
    	game.addVisualCharacter(pepita)

    	keyboard.up().onPressDo({pepita.mover(arriba)})
    	keyboard.down().onPressDo({pepita.mover(abajo)})
    	keyboard.left().onPressDo({pepita.mover(izquierda)})
    	keyboard.right().onPressDo({pepita.mover(derecha)})
//    	keyboard.c().onPressDo({pepita.interactuarComidas()})

        game.onCollideDo(pepita, {algo => algo.reaccion()})
    }
}