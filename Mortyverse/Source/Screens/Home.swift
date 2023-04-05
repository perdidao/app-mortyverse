//
//  Home.swift
//  Mortyverse
//
//  Created by Lucas Almeida on 28/03/23.
//

import SwiftUI

struct Home: View {
    @State private var characters = [Character]()

    var body: some View {
        NavigationView {
            ScrollView {
                LazyVStack(spacing: 16) {
                    ForEach(characters) { character in
                        CharacterCard(character: character)
                    }
                }
                .padding(20)
            }
        }
        .task {
            do {
                characters = await CharacterApi.getAllCharacters()
            } catch {
                characters = []
            }
        }
    }
        
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
