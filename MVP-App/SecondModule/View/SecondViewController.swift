//
//  SecondViewController.swift
//  MVP-App
//
//  Created by Karakhanyan Tigran on 24.03.2022.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var topLabel: UILabel!
    @IBOutlet weak var middleLabel: UILabel!
    @IBOutlet weak var bottomLabel: UILabel!
    
    private var testData: [Crypto] = []
    private var count = 0
    
    private let presenter = SecondPresenter()
    weak var viewOutputDelegate: ViewOutputDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        presenter.setViewInputDelegate(viewInputDelegate: self)
        self.viewOutputDelegate = presenter
        self.viewOutputDelegate?.getData()
    }
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        viewOutputDelegate?.getRandomCount()
    }
}

extension SecondViewController: SecondViewIntputDelegate {
    func setupInitialState() {
        displayData(i: count)
    }
    
    func setupData(with testData: [Crypto]) {
        self.testData = testData
    }
    
    func displayData(i: Int) {
        if testData.count >= 0 && count <= (testData.count - 1) && count >= 0 {
            topLabel.text = testData[i].name
            middleLabel.text = testData[i].ticker
            bottomLabel.text = String(testData[i].value)
        } else {
            print("sorry, do data")
        }
    }
}
