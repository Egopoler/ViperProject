
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
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        print(2)
        var view = storyboard.instantiateViewController(withIdentifier: "ViewController") as? EntryPoint
        print("router-checkpoint")
        // var view: AnyViewController = ViewController()
        var interactor: AnyInteractor = UserInteractor()
        var presenter: AnyPresenter = UserPresenter()
        
        view?.presenter = presenter
        
        interactor.presenter = presenter
        
        
        presenter.interactor = interactor
        presenter.router = router
        presenter.viewController = view
        
        router.entry = view as? EntryPoint
        
        
        
        return router
    }
}
