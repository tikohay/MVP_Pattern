//
//  MyDetailPresenter.swift
//  MVP-App
//
//  Created by Karakhanyan Tigran on 25.03.2022.
//

import Foundation

protocol MyDetailPresenterProtocol: AnyObject {
    init(view: MyDetailViewInputDelegate, user: MyUser)
    func getUser()
}

class MyDetailPresenter: MyDetailPresenterProtocol {
    weak var view: MyDetailViewInputDelegate?
    var user: MyUser
    
    required init(view: MyDetailViewInputDelegate, user: MyUser) {
        self.view = view
        self.user = user
    }
    
    func getUser() {
        prepareUser(user: user)
    }
}

extension MyDetailPresenter: MyDetailViewOutputDelegate {
    func prepareUser(user: MyUser) {
        view?.showUser(user: user)
    }
}
