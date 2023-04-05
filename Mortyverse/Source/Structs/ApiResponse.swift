//
//  ApiResponse.swift
//  Mortyverse
//
//  Created by Lucas Almeida on 28/03/23.
//

import Foundation

struct Info: Decodable {
    let count: Int
    let pages: Int
    let next: String?
    let prev: String?
}

struct CharacterRespose: Decodable {
    let info: Info
    let results: [Character]
}

struct LocationRespose: Decodable {
    let info: Info
    let results: [Location]
}

struct EpisodeRespose: Decodable {
    let info: Info
    let results: [Episode]
}
