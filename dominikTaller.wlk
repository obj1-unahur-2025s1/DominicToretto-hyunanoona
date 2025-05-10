import autos.*

object dominik {
  const autos = #{} 

  method comprarAuto(unAuto) = autos.add(unAuto)

  method autosNoEnCondiciones() = autos.filter{a => not a.estaEnCondiciones()}

  method autosEnCondiciones() = autos.filter{a => a.estaEnCondiciones()}

  method enviarAlTaller() {
    taller.recibirAutos(self.autosNoEnCondiciones())
    taller.repararAutos(self.autosNoEnCondiciones())
  }

  method hacerPruebas() = autos.forEach{a => a.hacerPrueba()}

  method venderAutos(unaColeccion) = autos.clear()
  
  method promedioDeVelocidadesMaximas() = autos.sum{a => a.velocidadMaxima()} / autos.size()

  method autoMasVelozEnCondiciones() = self.autosEnCondiciones().max{a => a.velocidadMaxima()}

  method velocidadEsMasDelDoble() = self.autoMasVelozEnCondiciones().velocidadMaxima() > self.promedioDeVelocidadesMaximas()*2
}

object taller {
  const autosAReparar = #{} 

  method recibirAutos(unaColeccion) = autosAReparar.addAll(unaColeccion)

  method repararAutos(unaColeccion) {
    autosAReparar.forEach{a => a.repararAuto()}
    autosAReparar.clear()
  }
}