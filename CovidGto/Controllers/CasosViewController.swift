//
//  CasosViewController.swift
//  CovidGto
//
//  Created by Carlos Cardona on 04/07/20.
//  Copyright © 2020 D O G. All rights reserved.
//

import UIKit

class CasosViewController: UIViewController {
    
    var casosData = DataLoader().casosData
    var casos:CasosData?
    
    
    
    
 
    @IBOutlet weak var casosConfirmadosNumber: UILabel!
    
    @IBOutlet weak var casosEnInvestigacionNumber: UILabel!
    
    @IBOutlet weak var casosDescartadosNumber: UILabel!
    
    @IBOutlet weak var defuncionesNumber: UILabel!
    
    @IBOutlet weak var casosRecuperadosNumber: UILabel!
    
    @IBOutlet weak var casosDeTransmicionNumber: UILabel!
    
    @IBOutlet weak var colorSemaforoImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
         // passing the number of cases labels from the json file
        
        casosConfirmadosNumber.text = String(describing: casos?.casosConfirmados)
        casosDescartadosNumber.text = String(describing: casos?.casosDescartados)
        casosEnInvestigacionNumber.text = String(describing: casos?.casosEnInvestigacion)
        defuncionesNumber.text = String(describing: casos?.defunciones)
        casosRecuperadosNumber.text = String(describing: casos?.casosRecuperados)
        casosDeTransmicionNumber.text = String(describing: casos?.casosDeTransmisionComunitaria)
        
    }
   
}
