//
//  CharacterApi.swift
//  Mortyverse
//
//  Created by Lucas Almeida on 28/03/23.
//

import Foundation

class CharacterApi {
    
    static func getAllCharacters() async -> [Character] {
        do {
            let url = URL(string: "https://rickandmortyapi.com/api/character/")!
            let (data, _) = try await URLSession.shared.data(from: url)
            let response = try JSONDecoder().decode(CharacterRespose.self, from: data)
            return response.results
        } catch (let error) {
            print(error)
        }
        return []
    }
}
