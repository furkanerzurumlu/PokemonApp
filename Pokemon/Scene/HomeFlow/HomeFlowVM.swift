//
//  HomeFlowVM.swift
//  Pokemon
//
//  Created by Furkan Erzurumlu on 6.05.2022.
//

import Foundation

protocol HomeFlowVMProtocol: AnyObject {
    
}

protocol HomeFlowVMDelegate: HomeFlowVMProtocol {
    var delegate: HomeFlowVMOutputs? { get set }
    func getServiceData()
    var data: Pokemon? { get set }
}


enum HomeFlowVMOutputs {
    case Succes
    case error(String)
     
}

class HomeFlowVM: HomeFlowVMDelegate{
    var data: Pokemon?
    var delegate: HomeFlowVMOutputs?
    var nextPage: String = "https://pokeapi.co/api/v2/pokemon/?offset=0&limit=20"
    var network: Network = Api()
    var serviceOk: Bool = false
   
    func getServiceData() {
        if serviceOk {
            return
        }
        serviceOk = true
        network.getDownloadPokemon(url: nextPage) { [weak self] (response, err) in
            guard let self = self else {return}
            if let response = response {
                self.data = response
            }
        }
        
    }
    
   
    
}
