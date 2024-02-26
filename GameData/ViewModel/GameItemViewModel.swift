//
//  GameItemViewModel.swift
//  GameData
//
//  Created by Angelo Chavez on 22/02/24.
//

//import Foundation
//class GameItemViewModel: ObservableObject {
//    @Published var id = 1
//    @Published var name = ""
//    @Published var released = ""
//    @Published var backgroundImage = ""
//    
//    func fetch(id: Int) {
//        guard let url = URL(string: "https://api.rawg.io/api/games/\(id)?key=\(APIToken.token)") else { return }
//        
//        URLSession.shared.dataTask(with: url) { data, response, error in
//            guard let data = data, error == nil else {
//                print("Error al obtener datos:", error?.localizedDescription ?? "")
//                return
//            }
//            
//            do {
//                let json = try JSONDecoder().decode(GameResult.self, from: data)
//                DispatchQueue.main.async {
//                    self.id = json.id
//                    self.name = json.name ?? ""
//                    self.released = json.released ?? ""
//                    self.backgroundImage = json.backgroundImage?.absoluteString ?? ""
//                    
//                    
//                }
//            } catch let error as NSError {
//                print("Error al decodificar JSON:", error.localizedDescription)
//            }
//        }.resume()
//    }
//}
