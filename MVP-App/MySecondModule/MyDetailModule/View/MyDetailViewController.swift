//
//  MyDetailViewController.swift
//  MVP-App
//
//  Created by Karakhanyan Tigran on 25.03.2022.
//

import UIKit

class MyDetailViewController: UIViewController {

    var presenter: MyDetailPresenterProtocol!
    
    @IBOutlet weak var myLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        presenter.getUser()
    }
}

extension MyDetailViewController: MyDetailViewInputDelegate {
    func showUser(user: MyUser) {
        myLabel.text = user.name
    }
}
