//
//  Home.swift
//  GameData
//
//  Created by Angelo Chavez on 22/02/24.
//

import SwiftUI

struct HomeView: View {
    
    let games: [Game]
    
    var body: some View {
        ScrollView(.vertical) {
            VStack(alignment: .leading) {
                let genres = Set(games.map { $0.genre })
                
                ForEach(genres.sorted(), id: \.self) { genre in
                    Text(genre)
                        .foregroundColor(.black)
                        .bold()
                        .font(.title2)
                        .padding()
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack() {
                            
                            let filteredGames = games.filter { $0.genre == genre }
                            
                            ForEach(filteredGames) { game in
                                GameView(game: game)
                                    .padding(.horizontal)
                                
                            }
                        }
                        
                    }
                }
                
            }
        }
        .background(.white)
    }
}

#Preview{
        HomeView(games: [ Game(backgroundImage: "1", name: "Game 1", genre: "Action"),
                          Game(backgroundImage: "2", name: "Game 2", genre: "Adventure"),
                          Game(backgroundImage: "1", name: "Game 3", genre: "Action"),
                          Game(backgroundImage: "2", name: "Game 4", genre: "Adventure"),
                          Game(backgroundImage: "1", name: "Game 5", genre: "Action"),
                          Game(backgroundImage: "3", name: "Game 6", genre: "RPG"),
            Game(backgroundImage: "1", name: "Game 1", genre: "Action"),
            Game(backgroundImage: "2", name: "Game 2", genre: "Adventure"),
            Game(backgroundImage: "1", name: "Game 3", genre: "Action"),
            Game(backgroundImage: "2", name: "Game 4", genre: "Adventure"),
            Game(backgroundImage: "1", name: "Game 5", genre: "Action"),
            Game(backgroundImage: "3", name: "Game 6", genre: "RPG"),
        ])
    }


