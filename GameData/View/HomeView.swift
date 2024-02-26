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
//            ForEach(game) { game in
//                GameView(game: game)
//            }
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

let game: [Game] =  [Game( backgroundImage: "1", name: "games 1"),
                    Game( backgroundImage: "2", name: "game 2"),
                     Game( backgroundImage: "3", name: "game 3"),
                     Game( backgroundImage: "4", name: "game 4"),
                     Game( backgroundImage: "1", name: "game 5"),
                     Game( backgroundImage: "2", name: "game 6")]
