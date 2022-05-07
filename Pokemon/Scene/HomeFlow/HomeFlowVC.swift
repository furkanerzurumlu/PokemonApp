//
//  ViewController.swift
//  Pokemon
//
//  Created by Furkan Erzurumlu on 6.05.2022.
//

import UIKit

class HomeFlowVC: UIViewController {

    var viewModel: HomeFlowVM!
    
    @IBOutlet private weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(HomeFlowCell.nibName, forCellReuseIdentifier: HomeFlowCell.identifier)
    }


}

extension HomeFlowVC: UITableViewDelegate , UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: HomeFlowCell.identifier, for: indexPath) as! HomeFlowCell
        cell.pokemonNameLabel.text = viewModel.data?.results[0].name
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
    
}
