import universidades.*
class ProfesionalVinculado {
  
  const property universidad

  method honorarios() = universidad.honorarios()

  method provincia() = #{universidad.provincia()}//Lo pongo entre corchetes para que me devuelva la provincia en forma de lista

  method cobrar(importe) {universidad.recibirDonacion(importe/2)}
}

class ProfesionalAsociado {
  
  const property universidad
  method honorarios() = 3000
  const property provincia = #{"Entre Ríos", "Santa Fe", "Corrientes"}
  method cobrar(importe) {asociacionDeProfesionalesDelLitoral.recibirPago(importe)}
}

class ProfesionalLibre {
  
  const property universidad
  const property provincia = #{}
  method agregarProvincia(unaProvincia) {
    provincia.add(unaProvincia)
  }
  const property honorarios
  var totalRecaudado = 0
  method cobrar(importe) {totalRecaudado += importe}
  method pasarDinero(otroProfesional, importe) {
    if (importe <= totalRecaudado) {
      totalRecaudado -= importe
      otroProfesional.cobrar(importe)
    }
  }
}