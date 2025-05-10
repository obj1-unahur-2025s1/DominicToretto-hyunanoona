import dominikTaller.*

object ferrari {
  var motor = 87
  method estaEnCondiciones() = motor > 65
  method repararAuto(){
    motor = 100
  }
  method velocidadMaxima() = 110 + if(motor > 75) 15 else 0
  method hacerPrueba() {
    motor = (motor - 30).max(0)
  }
}

object flecha {
  var nivelCombustible = 100
  var property combustible = gasolina
  var property color = azul 
  method estaEnCondiciones() = nivelCombustible > combustible.nivelMinimo() 
                               && color == rojo 
  method repararAuto() {
    nivelCombustible = nivelCombustible*2
    color = color.cambiarDeColor()
  }
  method velocidadMaxima() {
    return
        nivelCombustible * 2 + combustible.calculoAdcional(nivelCombustible)
  }
  method hacerPrueba() {
    nivelCombustible = (nivelCombustible - 5).max(0)
  }
}

    object gasolina {
    method nivelMinimo(nivel) = 85
    method calculoAdicional(unaCantidad) = 10
    }

    object nafta {
    method nivelMinimo(nivel) = 50
    method calculoAdicional(unaCantidad) = -1 * (unaCantidad * 2) * 0.1
    }

    object nitrogeno {
    method nivelMinimo(nivel) = 0
    method calculoAdicional(unaCantidad) = (unaCantidad * 2) * 10
    }

    object azul {
    method cambiarDeColor() = verde
    }

    object rojo {
    method cambiarDeColor() = azul
    }

    object verde {
    method cambiarDeColor() =rojo
    }

object intocable {
  var property estaEnCondiciones = true
  method hacerPrueba() {estaEnCondiciones = false}
  method reparar() {estaEnCondiciones = true}
  method velocidadMaxima() = 45
}