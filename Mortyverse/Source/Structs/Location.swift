//
//  Location.swift
//  Mortyverse
//
//  Created by Lucas Almeida on 28/03/23.
//

import Foundation

struct Location: Decodable, Identifiable {
    let id: Int?
    let name: String
    let type: String?
    let dimension: String?
    let residents: [String]?
    let url: String
    let created: String?
}
