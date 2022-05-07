//
//  HomeFlowCell.swift
//  Pokemon
//
//  Created by Furkan Erzurumlu on 6.05.2022.
//

import UIKit

class HomeFlowCell: UITableViewCell {
 
    @IBOutlet weak var pokemonNameLabel: UILabel!
    @IBOutlet weak var pokemonImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setPokemonName() {
        //TODO: SET NAME
    }
    
    func setPokemonImageView() {
        
    }
    
}

extension HomeFlowCell {
    static var identifier: String {
        return String(describing: self)
    }
    
    static var nibName: UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
}
