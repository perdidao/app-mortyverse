//
//  CharacterCard.swift
//  Mortyverse
//
//  Created by Lucas Almeida on 28/03/23.
//

import SwiftUI

struct CharacterCard: View {
    var character: Character
    
    var body: some View {
        HStack(alignment: .top) {
            AsyncImage(
                url: URL(string: character.image),
                content: { image in
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(maxWidth: 90, maxHeight: 90)
                        .cornerRadius(15)
                        .padding(.trailing, 10)
                },
                placeholder: {
                    ProgressView()
                }
            )
            .opacity(character.status == "Dead" ? 0.4 : 1)
            VStack(alignment: .leading) {
                Text(character.name)
                    .font(DSFont.title2.bold())
                    .foregroundColor(character.status == "Dead" ? DSColor.scale3 : DSColor.primary)
                Text(character.location?.name ?? "")
                    .font(DSFont.subheadline)
                    .foregroundColor(character.status == "Dead" ? DSColor.scale4 : DSColor.scale2)
                    .padding(.bottom, 5)
                HStack {
                    Image(systemName: character.status == "Dead" ? "face.dashed" : "face.smiling")
                        .font(DSFont.caption)
                        .foregroundColor(DSColor.secondary)
                        .opacity(character.status == "Dead" ? 0.4 : 1)
                    Text(character.status)
                        .font(DSFont.caption)
                        .foregroundColor(character.status == "Dead" ? DSColor.scale4 : DSColor.scale2)
                    Spacer()
                    Image(systemName: character.species == "Alien" ? "figure.fall" : "figure.wave")
                        .font(DSFont.caption)
                        .foregroundColor(DSColor.secondary)
                        .opacity(character.status == "Dead" ? 0.4 : 1)
                    Text(character.species)
                        .font(DSFont.caption)
                        .foregroundColor(character.status == "Dead" ? DSColor.scale4 : DSColor.scale2)
                    Spacer()
                    Image(systemName: "figure.dress.line.vertical.figure")
                        .font(DSFont.caption)
                        .foregroundColor(DSColor.secondary)
                        .opacity(character.status == "Dead" ? 0.4 : 1)
                    Text(character.gender)
                        .font(DSFont.caption)
                        .foregroundColor(character.status == "Dead" ? DSColor.scale4 : DSColor.scale2)
                }
            }
            Spacer()
        }
    }
}

struct CharacterCard_Previews: PreviewProvider {
    static let character: Character = Character(
        id: 1,
        name: "Rick Sanchez",
        status: "Alive",
        species: "Human",
        type: "Person",
        gender: "Male",
        origin: nil,
        location: nil,
        image: "https://rickandmortyapi.com/api/character/avatar/1.jpeg",
        episode: [
            "https://rickandmortyapi.com/api/episode/1",
            "https://rickandmortyapi.com/api/episode/2",
            "https://rickandmortyapi.com/api/episode/3",
        ],
        url:  "https://rickandmortyapi.com/api/character/1",
        created: "2017-11-04T18:48:46.250Z"
    )
    static var previews: some View {
        CharacterCard(character: character)
    }
}
