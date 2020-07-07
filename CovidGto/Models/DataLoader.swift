//
//  DataLoader.swift
//  CovidGto
//
//  Created by Carlos Cardona on 04/07/20.
//  Copyright © 2020 D O G. All rights reserved.
//

import Foundation

public class DataLoader {
    
    @Published var casosData = [CasosData]()
    
    init() {
        load()
    }
    func load() {
        if let fileLocation = Bundle.main.url(forResource: "CoronavirusGuanajuato", withExtension: "json") {
            
            // Do catch
            do {
                let data = try Data(contentsOf: fileLocation)
                let jsonDecoder = JSONDecoder()
                let dataFromJson = try jsonDecoder.decode([CasosData].self, from: data)
                
                self.casosData = dataFromJson
            }
            catch {
                print(error)
            }
        }
    }
    
    
}
