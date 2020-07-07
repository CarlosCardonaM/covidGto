//
//  DatosViewController.swift
//  CovidGto
//
//  Created by Carlos Cardona on 04/07/20.
//  Copyright © 2020 D O G. All rights reserved.
//

import UIKit


class DatosViewController: UIViewController {
    
    let casosData = DataLoader().casosData
    var casos:CasosData?
    
    
    @IBOutlet weak var fechasTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fechasTableView.delegate = self
        fechasTableView.dataSource = self
    }
}


// MARK: - TableView delegate and Datasource Methods
extension DatosViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return casosData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "fechasCell", for: indexPath)
        cell.textLabel?.text = casosData[indexPath.row].fecha
        cell.textLabel?.font = .boldSystemFont(ofSize: 15 )
        
        if casosData[indexPath.row].semaforo == "Rojo" {
            cell.textLabel?.textColor = .red
        }
        else if casosData[indexPath.row].semaforo == "Naranja" {
            cell.textLabel?.textColor = .orange
        }
        else if casosData[indexPath.row].semaforo == "Amarillo" {
            cell.textLabel?.textColor = .yellow
        }
        else {
            cell.textLabel?.textColor = .green
        }
        return cell
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        }
    
}
