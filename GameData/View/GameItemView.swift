//
//  GameItemView.swift
//  GameData
//
//  Created by Angelo Chavez on 22/02/24.
//

import SwiftUI

struct GameView: View {
    let game: [Game]
    var body: some View {
        VStack(alignment: .leading) {
            Text("Novedades")
                .foregroundColor(.black)
                .bold()
                .padding(.horizontal)
                .font(.title2)

            ScrollView(.horizontal) {
                HStack {
                    ForEach(game) { game in
                        VStack {
                            Image(game.backgroundImage)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 380)
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
                .padding(.vertical, 4)
                .padding(.horizontal, 5)
            }
        }
    }
}


#Preview {
    GameView(game: [Game( backgroundImage: "1", name: "game 1"),
                     Game( backgroundImage: "2", name: "game 2"),
                     Game( backgroundImage: "3", name: "game 3"),
                     Game( backgroundImage: "4", name: "game 4"),
                     Game( backgroundImage: "1", name: "game 5"),
                     Game( backgroundImage: "2", name: "game 6")])
}

struct Game: Identifiable{
    var id = UUID()
    let backgroundImage: String
    let name : String
}
