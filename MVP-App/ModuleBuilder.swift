//
//  File.swift
//  MVP-App
//
//  Created by Karakhanyan Tigran on 02.02.2022.
//

import Foundation
import UIKit

protocol Builder {
    static func createMainModule() -> UIViewController
    static func createMyModule() -> UIViewController
}

class ModuleBuilder: Builder {
    static func createMainModule() -> UIViewController {
        let model = Person(firstName: "Jason", lastName: "Statham")
        let view = MainViewController()
        let presenter = MainPresenter(view: view , person: model)
        view.presenter = presenter
        return view
    }
    
    static func createMyModule() -> UIViewController {
        let view = MyViewController()
        let model = MyPerson(name: "Mike", lastname: "Tyson")
        let presenter = MyPresenter(view: view, model: model)
        view.presenter = presenter
        return view
    }
}
