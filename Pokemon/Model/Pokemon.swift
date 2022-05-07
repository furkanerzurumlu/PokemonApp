//
//  Pokemon.swift
//  Pokemon
//
//  Created by Furkan Erzurumlu on 6.05.2022.
//

import Foundation

// MARK: - Welcome
struct Pokemon: Codable {
    let count: Int
    let next: String
    let previous: JSONNull?
    let results: [Result]
}

// MARK: - Result
struct Result: Codable {
    let name: String
    let url: String
}

