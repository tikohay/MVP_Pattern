//
//  SecondViewInputDelegate.swift
//  MVP-App
//
//  Created by Karakhanyan Tigran on 24.03.2022.
//

import Foundation

protocol SecondViewIntputDelegate: AnyObject {
    func setupInitialState()
    func setupData(with testData: [Crypto])
    func displayData(i: Int)
}
