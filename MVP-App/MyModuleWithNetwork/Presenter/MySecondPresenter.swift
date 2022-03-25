//
//  MySecondPresenter.swift
//  MVP-App
//
//  Created by Karakhanyan Tigran on 25.03.2022.
//

import Foundation

protocol MySecondPresenterProtocol: AnyObject {
    init(view: MySecondViewInputDelegate, networkService: MyNetworkService)
    func prepareUsers()
}

class MySecondPresenter: MySecondPresenterProtocol {
    weak var view: MySecondViewInputDelegate?
    private let networkService: MyNetworkService
    
    required init(view: MySecondViewInputDelegate, networkService: MyNetworkService) {
        self.view = view
        self.networkService = networkService
        prepareUsers()
    }
    
    func prepareUsers() {
        getUsers()
    }
}

extension MySecondPresenter: MySecondViewOutputDelegate {
    func getUsers() {
        networkService.getUsers { [weak self] result in
            guard let self = self else { return }
            DispatchQueue.main.async {
                switch result {
                case .success(let users):
                    self.view?.showUsers(users: users)
                case .failure(let error):
                    print(error)
                }
            }
        }
    }
}
