//
//  MySecondViewController.swift
//  MVP-App
//
//  Created by Karakhanyan Tigran on 25.03.2022.
//

import UIKit

class MySecondViewController: UIViewController {
    
    @IBOutlet weak var myTableView: UITableView!
    
    private var users: [MyUser] = []
    
    var presenter: MySecondPresenterProtocol!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        myTableView.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
    }
}

extension MySecondViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return users.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")
        let user = users[indexPath.row]
        cell?.textLabel?.text = user.name + user.address.street + user.company.name
        return cell!
    }
}

extension MySecondViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let user = users[indexPath.row]
        let vc = ModuleBuilder.createMyDetailModule(user: user)
        present(vc, animated: true, completion: nil)
    }
}

extension MySecondViewController: MySecondViewInputDelegate {
    func showUsers(users: [MyUser]) {
        self.users = users
        self.myTableView.reloadData()
    }
}
