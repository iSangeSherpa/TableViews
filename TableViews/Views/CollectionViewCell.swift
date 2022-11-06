import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var imageView: UIImageView!
    
    static let identifier = "CollectionViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: self.identifier, bundle: nil)
    }
    
    override class func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func configure(with model: Model) {
        self.nameLabel.text = model.text
        self.imageView.image = UIImage(named: model.imageName)
        self.imageView.contentMode = .scaleAspectFill
    }
    
}
