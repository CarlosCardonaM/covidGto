//
//  DatosViewController.swift
//  CovidGto
//
//  Created by Carlos Cardona on 04/07/20.
//  Copyright © 2020 D O G. All rights reserved.
//

import UIKit


class DatosViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var casosData = [CasosData]()
    
    
    @IBOutlet weak var fechasTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        downloadJson {
            self.fechasTableView.reloadData()
        }
        
        fechasTableView.delegate = self
        fechasTableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return casosData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "fechasCell", for: indexPath)
        cell.textLabel?.text = casosData[indexPath.row].fecha
        cell.textLabel?.font = .boldSystemFont(ofSize: 15)
        cell.textLabel?.textAlignment = .justified
        return cell
        
    }
    

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? CasosViewController {
            destination.casos = casosData[(fechasTableView.indexPathForSelectedRow?.row)!]
        }
    }
    
    
    // MARK: - Downloading Json Data
    
    
    func downloadJson(completed: @escaping () -> ()) {
        
        let url = URL(string: "https://raw.githubusercontent.com/CarlosCardonaM/jsonCovidGto/master/db.json")

        URLSession.shared.dataTask(with: url!) { (data, response, error) in
            if error == nil {
                do {
                    self.casosData = try JSONDecoder().decode([CasosData].self, from: data!)
                    
                    DispatchQueue.main.async {
                        completed()
                    }
                }
                catch {
                    print("Json error")
                }
                
            }
        }.resume()
    }
    
    
}
