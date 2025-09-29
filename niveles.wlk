import wollok.game.*
import pepita.*
import extras.*
import comidas.*
import direcciones.*

object nivel1{
    method inicializar(){
		const muros = (4..7).map {y => new Muro(position = game.at(3,y))}
		muros.forEach {muro => game.addVisual(muro)}
		const personajes = [ nido, silvestre, new Manzana(), new Manzana(position = game.at(6,6), base = 10), pepita ]
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
		game.removeTickEvent.("gravedad")
		keyboard.r().onPressDo {
			game.clear()
			self.inicializar()
			pepita.inicializar()
		}
	}
}