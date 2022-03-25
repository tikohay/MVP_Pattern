//
//  MyDetailViewOutputDelegate.swift
//  MVP-App
//
//  Created by Karakhanyan Tigran on 25.03.2022.
//

import Foundation

protocol MyDetailViewOutputDelegate: AnyObject {
    func prepareUser(user: MyUser)
}
