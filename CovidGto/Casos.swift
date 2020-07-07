//
//  Casos.swift
//  CovidGto
//
//  Created by Carlos Cardona on 03/07/20.
//  Copyright © 2020 D O G. All rights reserved.
//

import Foundation

struct CovidData: Codable {
    
    var fechas = [String: [Any]]()
    var fecha = ""
    var semaforo = ""
    var casosConfirmados = 0
    var casosEnInvestigacion = 0
    var casosDescartados = 0
    var defunciones = 0
    var casosRecuperados = 0
    var casosDeTransmisionComunitaria = 0
    
}

