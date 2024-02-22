//
//  Modelo2.swift
//  GameData
//
//  Created by Angelo Chavez on 22/02/24.
//

import Foundation

//struct Modelo2 : Decodable {
//    var data : [UserList]
//}
//
//struct User: Decodable{
//    var data : UserList
//}
//
//struct UserList : Decodable {
//    var id: Int
//    var first_name : String
//    var email : String
//    var avatar : String
//}

struct APIToken {
    static let token: String = "71850a1c82b14a79be34555ece9a8b70"
}
struct Modelo2: Decodable {
    let results:[GameResult]
}

struct GameUser: Decodable{
    var results : GameResult
}

struct GameResult: Decodable {
    let id: Int
    let name: String?
    let released: String?
    let backgroundImage: URL?
    let metacritic: Int?
    let genres: [GameGenres]?
}

struct GameGenres: Codable {
    let name: String
}
