//
//  Network.swift
//  Pokemon
//
//  Created by Furkan Erzurumlu on 6.05.2022.
//

import Foundation


protocol Network {
    func getDownloadPokemon(url: String, completion: @escaping (Pokemon? , String?) -> Void)
    func getPokemonDetail(url: String, completion: @escaping (PokemonDetail? , String?) -> Void)
}

extension Api: Network {
    func getDownloadPokemon(url: String, completion: @escaping (Pokemon? , String?) -> Void) {
        network.getData(url: url) { [weak self] (response: Pokemon?, error: String?)   in
            completion(response, error)
        }
    }
    
    func getPokemonDetail(url: String, completion: @escaping (PokemonDetail? , String?) -> Void) {
        network.getData(url: url) { [weak self] (response: PokemonDetail?, error: String?)   in
            completion(response, error)
        }
    }
}
