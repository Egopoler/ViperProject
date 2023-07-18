//
//  Presenter.swift
//  ViperProject
//
//  Created by MacBook Pro on 18.07.2023.
//

import Foundation


protocol AnyPresenter {
    var router: AnyRouter? { get set }
    var interactor: AnyInteractor? { get set }
    var viewController: AnyViewController? { get set }
    
    func interactorDidFetchUsers(with result: Result<[User], Error>)
    
    
}


class UserPresenter: AnyPresenter {
    var router: AnyRouter?
    
    var interactor: AnyInteractor?
    
    var viewController: AnyViewController?
    
    func interactorDidFetchUsers(with result: Result<[User], Error>) {
        
    }
    
    
}
