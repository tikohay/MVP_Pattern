//
//  MyViewController.swift
//  MVP-App
//
//  Created by Karakhanyan Tigran on 24.03.2022.
//

import UIKit

class MyViewController: UIViewController {
    
    var presenter: MyPresenterViewProtocol?
    
    @IBOutlet weak var myLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func myButtonTapped(_ sender: UIButton) {
        presenter?.setupText()
    }
}

extension MyViewController: MyViewProtocol {
    func typeText(text: String) {
        myLabel.text = text
    }
}
