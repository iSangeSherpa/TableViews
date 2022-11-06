import UIKit

class CollectionTableViewController: UIViewController {
    
    @IBOutlet var table: UITableView!
    
    var models = [
        Model(text: "Bobby Portis", imageName: "Bobby Portis"),
        Model(text: "Giannis Antetokounpo", imageName: "Giannis Antetokounpo"),
        Model(text: "Jordan Nwora", imageName: "Jordan Nwora"),
        Model(text: "Jrue Holiday", imageName: "Jrue Holiday"),
        Model(text: "Khris Middleton", imageName: "Khris Middleton")
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        table?.register(CollectionTableViewCell.nib(), forCellReuseIdentifier: CollectionTableViewCell.identifier)
        table?.delegate = self
        table?.dataSource = self
    }
    
}


extension CollectionTableViewController : UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int { models.count }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CollectionTableViewCell.identifier, for: indexPath) as! CollectionTableViewCell
        
        cell.configure(with: models)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat { return 250.0 }
    
}
