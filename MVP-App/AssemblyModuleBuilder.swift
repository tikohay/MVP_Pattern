//
//  File.swift
//  MVP-App
//
//  Created by Karakhanyan Tigran on 02.02.2022.
//

import Foundation
import UIKit

protocol AssemblyBuilderProtocol {
    func createMainModule(router: RouterProtocol) -> UIViewController
    func createMyModule() -> UIViewController
    func createDetailModule(comment: Comment?, router: RouterProtocol) -> UIViewController
    func createMySecondModule() -> UIViewController
    func createMyDetailModule(user: MyUser) -> UIViewController
}

class AssemblyModuleBuilder: AssemblyBuilderProtocol {
    func createMainModule(router: RouterProtocol) -> UIViewController {
        let networkService = NetworkService()
        let view = MainViewController()
        let presenter = MainPresenter(view: view, networkService: networkService, router: router)
        view.presenter = presenter
        return view
    }
    
    func createMyModule() -> UIViewController {
        let view = MyViewController()
        let model = MyPerson(name: "Mike", lastname: "Tyson")
        let presenter = MyPresenter(view: view, model: model)
        view.presenter = presenter
        return view
    }
    
    func createDetailModule(comment: Comment?, router: RouterProtocol) -> UIViewController {
        let view = DetailViewController()
        let networkService = NetworkService()
        let presenter = DetailPresenter(view: view, networkService: networkService, router: router, comment: comment)
        view.presenter = presenter
        return view
    }
    
    func createMySecondModule() -> UIViewController {
        let view = MySecondViewController()
        let networkService = MyNetworkService()
        let presenter = MySecondPresenter(view: view, networkService: networkService)
        view.presenter = presenter
        return view
    }
    
    func createMyDetailModule(user: MyUser) -> UIViewController {
        let view = MyDetailViewController()
        let presenter = MyDetailPresenter(view: view, user: user)
        view.presenter = presenter
        return view
    }
}
