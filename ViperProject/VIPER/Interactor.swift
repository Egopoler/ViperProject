//
//  Interactor.swift
//  ViperProject
//
//  Created by MacBook Pro on 18.07.2023.
//

import Foundation



protocol AnyInteractor {
    var presenter: AnyPresenter? { get set }
    
    func getUsers()
}


class UserInteractor: AnyInteractor {
    var presenter: AnyPresenter?
    
    func getUsers() {
        
    }
    
    
}
