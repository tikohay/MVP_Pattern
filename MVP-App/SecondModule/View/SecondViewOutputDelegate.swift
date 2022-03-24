//
//  SecondViewOutputDelegate.swift
//  MVP-App
//
//  Created by Karakhanyan Tigran on 24.03.2022.
//

import Foundation

protocol ViewOutputDelegate: AnyObject {
    func getData()
    func saveData()
    func getRandomCount()
}
