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
}

class ProfesionalLibre {
  
  const property universidad
  const property provincia = #{}
  method agregarProvincia(unaProvincia) {
    provincia.add(unaProvincia)
  }
  const property honorarios
}