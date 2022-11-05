import UIKit

class SimpleTableViewController: UIViewController {
    
    @IBOutlet var table: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "SimpleTableViewController"
        
        table.delegate = self
        table.dataSource = self
    }


}

extension SimpleTableViewController : UITableViewDelegate, UITableViewDataSource {
        
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int { TableData.data.count }
        
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = TableData.data[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        if let vc = storyboard?.instantiateViewController(withIdentifier: "TableViewWithCustomCell") {
            vc.navigationItem.title = "TableViewWithCustomCell"
            navigationController?.pushViewController(vc, animated: true)
        }
    }
    
}
