//
//  MyPresenter.swift
//  MVP-App
//
//  Created by Karakhanyan Tigran on 24.03.2022.
//

import Foundation

protocol MyViewProtocol: AnyObject {
    func typeText(text: String)
}

protocol MyPresenterViewProtocol: AnyObject {
    init(view: MyViewProtocol, model: MyPerson)
    func setupText()
}

class MyPresenter: MyPresenterViewProtocol {
    var view: MyViewProtocol
    var model: MyPerson
    
    required init(view: MyViewProtocol, model: MyPerson) {
        self.view = view
        self.model = model
    }
    
    func setupText() {
        let text = model.name + model.lastname
        view.typeText(text: text)
    }
}
