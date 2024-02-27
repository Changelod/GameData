//
//  TabBar.swift
//  GameData
//
//  Created by Angelo Chavez on 22/02/24.
//

import Foundation

import SwiftUI

struct TabBar: View {
    var body: some View {
        HStack{
            TabView {
                HomeView(games: [
                    Game(backgroundImage: "1", name: "Game 1", genre: "Action"),
                    Game(backgroundImage: "2", name: "Game 2", genre: "Adventure"),
                    Game(backgroundImage: "4", name: "Game 3", genre: "Action"),
                    Game(backgroundImage: "3", name: "Game 4", genre: "Adventure"),
                    Game(backgroundImage: "4", name: "Game 5", genre: "Action"),
                    Game(backgroundImage: "3", name: "Game 6", genre: "Adventure"),
                ])
                    .tabItem {
                        Label("Home", systemImage: "person")
                    }
                
                TopView()
                    .tabItem {
                        Label("Top", systemImage: "cat")
                    }
                
                PlayingView()
                    .tabItem {
                        Label("Playing", systemImage: "dog")
                    }
               
            }
        }
    }
}

#Preview {
    TabBar()
}
