import UIKit

class TableWithCustomCells: UIViewController {
    
    @IBOutlet var table: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
    
        table?.dataSource = self
        table?.delegate = self
    }
}



extension TableWithCustomCells : UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int { return 5 }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        let mySwitch = UISwitch()
        cell.accessoryView = mySwitch
        
        return cell
    }

    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        if let vc = storyboard?.instantiateViewController(withIdentifier: "CollectionTableViewController") {
            vc.navigationItem.title = "CollectionTableViewController"
            navigationController?.pushViewController(vc, animated: true)
        }
    }

    
}
