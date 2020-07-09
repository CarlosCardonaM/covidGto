//
//  CasosViewController.swift
//  CovidGto
//
//  Created by Carlos Cardona on 04/07/20.
//  Copyright © 2020 D O G. All rights reserved.
//

import UIKit

class CasosViewController: UIViewController {
    
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
        
        title = casos?.fecha

        casosConfirmadosNumber.text = "\((casos?.casosConfirmados)!)"
        casosDescartadosNumber.text = "\((casos?.casosDescartados)!)"
        casosEnInvestigacionNumber.text = "\((casos?.casosEnInvestigacion)!)"
        defuncionesNumber.text = "\((casos?.defunciones)!)"
        casosRecuperadosNumber.text = "\((casos?.casosRecuperados)!)"
        casosDeTransmicionNumber.text = "\((casos?.casosDeTransmisionComunitaria)!)"
        
        colorSemaforoImageView.layer.borderWidth = 1
        colorSemaforoImageView.layer.masksToBounds = false
        colorSemaforoImageView.layer.cornerRadius = colorSemaforoImageView.frame.height/2
        colorSemaforoImageView.clipsToBounds = true
        colorSemaforoImageView.contentMode = .scaleAspectFill
        setColor()
        
        

    }
    
    func setColor() {
        if casos?.semaforo == "Rojo" {
            colorSemaforoImageView.image = UIImage.init(named: "color rojo")
        }
        else if casos?.semaforo == "Naranja" {
            colorSemaforoImageView.backgroundColor = UIColor.orange
        }
        else if casos?.semaforo == "Amarillo" {
            colorSemaforoImageView.backgroundColor = UIColor.yellow
        }
        else {
            colorSemaforoImageView.backgroundColor = UIColor.green
        }
    }
   
}
