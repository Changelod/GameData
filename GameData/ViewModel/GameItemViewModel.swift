//
//  GameItemViewModel.swift
//  GameData
//
//  Created by Angelo Chavez on 22/02/24.
//

import Foundation

class GameItemViewModel: ObservableObject {
    
    @Published var name = ""
    @Published var released = ""
    @Published var backgroundImage = ""
    
    func fetch(id: Int){
        guard let url = URL(string: "https://api.rawg.io/api/games/\(id)?key=\(APIToken.token)") else { return }
        
        URLSession.shared.dataTask(with: url){data,_,_ in
            
            guard let data = data else { return}
            do{
                let json = try JSONDecoder().decode(GameUser.self, from: data)
                DispatchQueue.main.async {
                    self.name = json.results.name!
                    self.released = json.results.released!
                    self.backgroundImage = json.results.backgroundImage?.absoluteString ?? ""

                }
            }catch let error as NSError{
                print("Error en el json", error.localizedDescription)
            }
        }.resume()
    }
}

