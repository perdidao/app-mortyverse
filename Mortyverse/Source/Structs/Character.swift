//
//  Character.swift
//  Mortyverse
//
//  Created by Lucas Almeida on 28/03/23.
//

import Foundation

struct Character: Decodable, Identifiable {
    let id: Int
    let name: String
    let status: String
    let species: String
    let type: String
    let gender: String
    let origin: Location?
    let location: Location?
    let image: String
    let episode: [String]
    let url: String
    let created: String
}
