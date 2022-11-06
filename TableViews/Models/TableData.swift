import Foundation

class TableData {
    
    static let data = ["One", "Two", "Three", "Four", "Five"]
    
}

struct Model {
    var text: String
    var imageName: String
    
    init(text: String, imageName: String) {
        self.text = text
        self.imageName = imageName
    }
}
