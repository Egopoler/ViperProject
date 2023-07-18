
import Foundation
import UIKit

typealias EntryPoint = AnyViewController & UIViewController


protocol AnyRouter {
    var entry: EntryPoint? { get }
    
    static func start() -> AnyRouter
}

class UserRouter: AnyRouter {
    var entry: EntryPoint?
    
    static func start() -> AnyRouter {
        let router = UserRouter()
        
        // here create VIP
        print("router-start")
        var view: AnyViewController = ViewController()
        var presenter: AnyPresenter = UserPresenter()
        var interactor: AnyInteractor = UserInteractor()
        
        view.presenter = presenter
        
        interactor.presenter = presenter
        
        presenter.interactor = interactor
        presenter.router = router
        presenter.viewController = view
        
        router.entry = view as? EntryPoint
        
        
        
        return router
    }
}
