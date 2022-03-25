//
//  MyUsers.swift
//  MVP-App
//
//  Created by Karakhanyan Tigran on 25.03.2022.
//

import Foundation

struct MyUser: Decodable {
    var id: Int
    var name: String
    var username: String
    var email: String
    var address: Adress
    var company: Company
}

struct Adress: Decodable {
    var street: String
}

struct Company: Decodable {
    var name: String
}
