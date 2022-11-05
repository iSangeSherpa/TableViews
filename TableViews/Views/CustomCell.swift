import UIKit

class CustomCell: UITableViewCell {
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var detailLabel: UILabel!
    @IBOutlet var imageLabel: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
