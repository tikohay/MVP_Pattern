//
//  SecondPresenter.swift
//  MVP-App
//
//  Created by Karakhanyan Tigran on 24.03.2022.
//

import Foundation

class SecondPresenter {
    
    weak private var viewInputDelegate: SecondViewIntputDelegate?
    var testData = Crypto.testData
    
    func setViewInputDelegate(viewInputDelegate: SecondViewIntputDelegate) {
        self.viewInputDelegate = viewInputDelegate
    }
    
    private func loadTestData() {
        self.viewInputDelegate?.setupData(with: testData)
    }
    
    private func random() {
        let randomCount = Int.random(in: 0 ..< testData.count)
        self.viewInputDelegate?.displayData(i: randomCount)
    }
}

extension SecondPresenter: ViewOutputDelegate {
    func getRandomCount() {
        random()
    }
    
    func getData() {
        self.loadTestData()
        self.viewInputDelegate?.setupInitialState()
    }
    
    func saveData() {
        
    }
}
