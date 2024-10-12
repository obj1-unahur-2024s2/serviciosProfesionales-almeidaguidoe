import profesionales.*
import solicitantes.*

class Empresa {
    const honorarios

    const empleados = #{}
    method contratarEmpleado(unEmpleado) {empleados.add(unEmpleado)}

    method empleadosDeUniversidad(universidad) = empleados.count({e => e.universidad() == universidad})
    method empleadosCaros() = empleados.filter({e => e.honorarios()>honorarios})
    method universidadesFormadoras() {
        return empleados.map({e => e.universidad()}).asSet()
    }
    method profesionalMasBarato() = empleados.min({e => e.honorarios()})
    method esDeGenteAcotada() = empleados.all({e => e.provincia().size()<=3})

    method puedeSatisfacerASolicitante(unSolicitante) = 
        empleados.any({e => unSolicitante.puedeSerAtendidoPor(e)})
}