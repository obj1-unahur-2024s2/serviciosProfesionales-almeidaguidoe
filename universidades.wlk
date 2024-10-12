class Universidad {
    const property honorarios
    const property provincia
    var totalDonaciones = 0
    method recibirDonacion(importe) {
        totalDonaciones += importe
    }
}

object asociacionDeProfesionalesDelLitoral {
    var totalRecaudado = 0

    method recibirPago(importe) {
        totalRecaudado += importe
    }
}