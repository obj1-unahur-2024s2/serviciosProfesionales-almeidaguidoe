class Persona {
    const provincia

    method puedeSerAtendidaPor(profesional) = profesional.provincia().any({p => p == provincia})
}

class Institucion {
    const universidadesQueReconoce = #{}

    method agregarUniversidadQueReconoce(unaUniversidad) {universidadesQueReconoce.add(unaUniversidad)}

    method puedeSerAtendidaPor(profesional) = universidadesQueReconoce.contains(profesional.universidad())
}

class Club {
    const provinciasEnDondeEsta = #{}

    method agregarProvincia(unaProvincia) {provinciasEnDondeEsta.add(unaProvincia)}

    method puedeSerAtendidaPor(profesional) = provinciasEnDondeEsta.intersection(profesional.provincias())>=1
}