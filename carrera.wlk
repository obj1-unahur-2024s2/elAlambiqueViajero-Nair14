import vehiculos.*
import lugares.*

object carrera {
    var lugarDeCarrera = paris
    const inscriptos = []
    const rechazados = []

    method sePuedeInscribir(unVehiculo) =
        lugarDeCarrera.sePuedeViajarEn(unVehiculo)

    method inscribir(vehiculo) {
        if (self.sePuedeInscribir(vehiculo)){
            inscriptos.add(vehiculo)
        }else{
            rechazados.add(vehiculo)
        }
    }

    method replanificacion(nuevoLugar) {
        lugarDeCarrera = nuevoLugar
        self.reinscripcion()
    }

    method reinscripcion() {
        const todosLosAutos = inscriptos + rechazados

        inscriptos.clear()
        rechazados.clear()
        todosLosAutos.forEach({v => self.inscribir(v)})
    }

    method todosALaCiudad() {
        inscriptos.forEach({v => v.sufrirConsecuencias()})
    }
  
}

