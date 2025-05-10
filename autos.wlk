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
  var color = azul 
  method estaEnCondiciones() = nivelCombustible > combustible.nivelMinimo() 
                               && color.esAptoParaCorrer()
  method repararAuto() {
    nivelCombustible = nivelCombustible*2
    color = color.cambiarDeColor()
  }
  method velocidadMaxima() {
    return
        nivelCombustible * 2 + combustible.calculoAdicional(nivelCombustible)
  }
  method hacerPrueba() {
    nivelCombustible = (nivelCombustible - 5).max(0)
  }
}

    object gasolina {
    method nivelMinimo() = 85
    method calculoAdicional(unaCantidad) = 10
    }

    object nafta {
    method nivelMinimo() = 50
    method calculoAdicional(unaCantidad) = -1 * (unaCantidad * 2) * 0.1
    }

    object nitrogeno {
    method nivelMinimo() = 0
    method calculoAdicional(unaCantidad) = (unaCantidad * 2) * 10
    }

    object azul {
    method cambiarDeColor() = verde
    method esAptoParaCorrer() = false
    }

    object rojo {
    method cambiarDeColor() = azul
    method esAptoParaCorrer() = true
    }

    object verde {
    method cambiarDeColor() =rojo
    method esAptoParaCorrer() = false
    }

object intocable {
  var property estaEnCondiciones = true
  method hacerPrueba() {estaEnCondiciones = false}
  method reparar() {estaEnCondiciones = true}
  method velocidadMaxima() = 45
}

object batimovil {
  var villanosChocados = 0
  method estaEnCondiciones() = batimisiles.cantidad() > 0 and villanosChocados < 7
  method hacerPrueba() {
    batimisiles.dispararMisil()
    villanosChocados = villanosChocados + 1
  }
  method reparar(){
    batimisiles.recargarMisiles()
    self.limpiarAuto()
  }
  method limpiarAuto() = villanosChocados.clear()
  method velocidadMaxima() = 50*batimisiles.cantidad()
}

object batimisiles {
  var property cantidad = 5
  method dispararMisil() {cantidad = (cantidad - 1).max(0)}
  method recargarMisiles() {cantidad = 5}
}