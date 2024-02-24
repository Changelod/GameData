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
            Image(user.backgroundImage)
                
            Text(user.name)
            Text(user.released)
           
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
    GameItemView(id: 3498)
}
