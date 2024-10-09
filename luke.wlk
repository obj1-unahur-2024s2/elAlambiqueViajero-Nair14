import vehiculos.*
import lugares.*



object luke {
    var vehiculo = alambiqueVeloz
    const lugaresVisitados = []

    method cantidadLugaresVisitados() = lugaresVisitados.size()

    method recuerdos() = lugaresVisitados.last().recuerdos()

    method viajar(unLugar) {
        if(unLugar.puedeViajarEn(vehiculo)) {
            lugaresVisitados.add(unLugar)
            vehiculo.sufrirConsecuencias()
        }
    }

    method cambiarVehiculo(otroVehiculo) {
        vehiculo = otroVehiculo

    }

  
}