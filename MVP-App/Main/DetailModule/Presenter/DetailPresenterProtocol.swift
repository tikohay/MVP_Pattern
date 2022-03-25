//
//  DetailPresenterProtocol.swift
//  MVP-App
//
//  Created by Karakhanyan Tigran on 24.03.2022.
//

import Foundation

protocol DetailViewProtocol: AnyObject {
    func setComment(comment: Comment?)
}

protocol DetailViewPresenterProtocol: AnyObject {
    init(view: DetailViewProtocol, networkService: NetworkServiceProtocol, router: RouterProtocol, comment: Comment?)
    func setComment()
    func tap()
}

class DetailPresenter: DetailViewPresenterProtocol {
    weak var view: DetailViewProtocol?
    var router: RouterProtocol?
    let networkService: NetworkServiceProtocol
    var comment: Comment
    
    required init(view: DetailViewProtocol, networkService: NetworkServiceProtocol, router: RouterProtocol, comment: Comment?) {
        self.view = view
        self.router = router
        self.networkService = networkService
        self.comment = comment!
    }
    
    func setComment() {
        view?.setComment(comment: comment)
    }
    
    func tap() {
        router?.popToRoot()
    }
}
