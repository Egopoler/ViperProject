
import UIKit

protocol AnyViewController {
    var presenter: AnyPresenter? { get set }
    
    func update(with users: [User])
    
    func update(with error: String)
    
    
}


class ViewController: UIViewController, AnyViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var users: [User] = []
    
    var presenter: AnyPresenter?
    
    // static var myStoryboard: UIStoryboard?
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        // ViewController.myStoryboard = storyboard
        print("MyViewController has been initialized")
    }
    
    func update(with users: [User]) {
        DispatchQueue.main.async {
            self.users = users
            self.tableView.reloadData()
            self.tableView.isHidden = false
        }
        
    }
    
    func update(with error: String) {
        
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
        return users.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = users[indexPath.row].name
        return cell
    }
    
    
}
