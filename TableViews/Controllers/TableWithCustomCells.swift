import UIKit

class TableWithCustomCells: UIViewController {
    
    @IBOutlet var table: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let nib = UINib(nibName: "CustomCell", bundle: nil)
        table?.register(nib, forCellReuseIdentifier: "CustomCell")
        table?.dataSource = self
        table?.delegate = self
    }
}



extension TableWithCustomCells : UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int { return 5 }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomCell", for: indexPath) as! CustomCell
        
        cell.nameLabel.text = TableData.data[indexPath.row]
        cell.detailLabel.text = "Detail Text"
        cell.imageLabel.backgroundColor = .systemRed
        return cell
    }
    
}
