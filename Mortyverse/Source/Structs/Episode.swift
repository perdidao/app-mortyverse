//
//  Episode.swift
//  Mortyverse
//
//  Created by Lucas Almeida on 28/03/23.
//

import Foundation

struct Episode: Decodable, Identifiable {
    let id: Int
    let name: String
    let air_date: String
    let episode: String
    let characters: [String]
    let url: String
    let created: String
}
