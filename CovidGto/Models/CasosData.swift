//
//  CasosData.swift
//  CovidGto
//
//  Created by Carlos Cardona on 04/07/20.
//  Copyright © 2020 D O G. All rights reserved.
//

import Foundation

struct CasosData: Codable {
    
    var fecha:String
    var semaforo:String
    var casosConfirmados:Int
    var casosEnInvestigacion:Int
    var casosDescartados:Int
    var defunciones:Int
    var casosRecuperados:Int
    var casosDeTransmisionComunitaria:Int
    
}
