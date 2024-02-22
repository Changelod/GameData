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
                HomeView()
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
