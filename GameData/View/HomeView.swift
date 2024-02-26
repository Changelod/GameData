//
//  Home.swift
//  GameData
//
//  Created by Angelo Chavez on 22/02/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ScrollView(.vertical){
            GameView(game: game)
            GameView(game: game)
            GameView(game: game)
            Spacer()
        }.background(.white)
    }
}

#Preview {
    HomeView()
}

let game: [Game] =  [Game( photo: "1", name: "games 1"),
                       Game( photo: "2", name: "game 2"),
                     Game( photo: "3", name: "game 3"),
                     Game( photo: "4", name: "game 4"),
                     Game( photo: "1", name: "game 5"),
                     Game( photo: "2", name: "game 6")]
