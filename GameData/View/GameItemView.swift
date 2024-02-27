//
//  GameItemView.swift
//  GameData
//
//  Created by Angelo Chavez on 22/02/24.
//

import SwiftUI

struct GameView: View {
    var game: Game
    var body: some View {
        VStack(alignment: .leading) {
                HStack {
                        VStack {
                            Image(game.backgroundImage)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 350)
                                .clipShape(Rectangle())
                              
                                .overlay(
                                    Rectangle()
                                        .stroke(LinearGradient(gradient: .init(colors: [Color.purple, Color.red, Color.orange]), startPoint: .topTrailing, endPoint: .topLeading), lineWidth: 4)
                                )
                                .overlay(Rectangle().stroke(Color.black, lineWidth: 1))
    
                            Text(game.name)
                                .font(.title3)
                                .foregroundColor(.black)
                                .bold()
                        }
                    }
                
               
            }
        }
    }


#Preview {
    GameView(game: Game(backgroundImage: "1", name: "game 1", genre: "action"))
}

struct Game: Identifiable{
    var id = UUID()
    var backgroundImage: String
    var name : String
    var genre: String
    
}

struct GameGenres: Identifiable {
    var id = UUID()
    var name: String
}
