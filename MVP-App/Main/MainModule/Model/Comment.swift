//
//  Person.swift
//  MVP-App
//
//  Created by Karakhanyan Tigran on 02.02.2022.
//

import Foundation

struct Comment: Decodable {
    var postId: Int
    var id: Int
    var name: String
    var email: String
    var body: String
}
