//
//  ContentView.swift
//  Mortyverse
//
//  Created by Lucas Almeida on 28/03/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Home()
                .tabItem {
                    Image(systemName: "person")
                    Text("Personagens")
                }
        }
        .background(DSColor.scale1)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
