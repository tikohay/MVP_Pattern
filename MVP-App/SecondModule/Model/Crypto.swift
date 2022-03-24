//
//  Crypto.swift
//  MVP-App
//
//  Created by Karakhanyan Tigran on 24.03.2022.
//

import Foundation

struct Crypto {
    var name: String
    var ticker: String
    var value: Int
}

extension Crypto {
    static var testData = [
        Crypto(name: "Bitcoin", ticker: "BTC", value: 1000),
        Crypto(name: "Bit", ticker: "BT", value: 100),
        Crypto(name: "B", ticker: "B", value: 10),
        Crypto(name: "Bitc", ticker: "BTC1", value: 100000),
        Crypto(name: "Bitcoin1", ticker: "BTC2", value: 10000000)
    ]
}
