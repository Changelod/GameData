//
//  GameItemView.swift
//  GameData
//
//  Created by Angelo Chavez on 22/02/24.
//

import SwiftUI

struct GameItemView: View {
    var id : Int
    @StateObject var user = GameItemViewModel()
    
    var body: some View {
    
        VStack{
            
            if user.backgroundImage.isEmpty {
                ProgressView()
            } else {
                AsyncImage(url: URL(string: user.backgroundImage)!) { image in
                    image
                        .resizable()
                        .frame(width: 130, height: 130)
                        .clipped()
                        .clipShape(Circle())
                } placeholder: {
                    Image("imagen_predeterminada")
                }
                
                
            Text(user.name).font(.largeTitle)
            Text(user.released).font(.title)
            }
        }.onAppear{
            user.fetch(id: id)
        }
    }
}

//struct GameItemView_Previews: PreviewProvider {
//    static var previews: some View {
//        GameItemView(id: 3498, user: GameItemViewModel())
//    }
//}

#Preview {
    GameItemView(id: 3498, user: GameItemViewModel())
}
