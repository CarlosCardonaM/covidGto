//
//  ViewController.swift
//  CovidGto
//
//  Created by Carlos Cardona on 03/07/20.
//  Copyright © 2020 D O G. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imagenGto: UIImageView!
    @IBOutlet weak var datosButton: UIButton!
    @IBOutlet weak var infoButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "COVID-19 Gto"
        
        imagenGto.layer.borderWidth = 1
        imagenGto.layer.masksToBounds = false
        imagenGto.layer.borderColor = UIColor.black.cgColor
        imagenGto.layer.cornerRadius = imagenGto.frame.height / 2
        imagenGto.clipsToBounds = true
        
        datosButton.layer.cornerRadius = 10
        
    }
    
}

