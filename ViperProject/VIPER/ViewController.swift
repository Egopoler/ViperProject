
import UIKit

protocol AnyViewController {
    var presenter: AnyPresenter? { get set }
    
    func update(with users: [User])
    
    func update(with error: Error)
    
    
}


class ViewController: UIViewController, AnyViewController {
    
//    private let tableView: UITableView = {
//        let table = UITableView()
//        table.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
//        return table
//    }()
    @IBOutlet weak var tableView: UITableView!
    
    
    var presenter: AnyPresenter?
    
    func update(with users: [User]) {
        
    }
    
    func update(with error: Error) {
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        print("vc viewDidLOad")
        view.backgroundColor = .blue
                
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.isHidden = false
        
    }


}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    
}
