
import UIKit

class Place{
    var title: String
    var image: UIImage?
    
    init(title: String, image: UIImage?){
        self.title = title
        self.image = image
    }
}

class PlacesDataSource{
    static var places: [Place]{
        return [
            Place(title: "Just Relax...", image: UIImage(named: "p1")),
            Place(title: "Travel Around The World...", image: UIImage(named: "p2")),
            Place(title: "Have at it in the Swimming pool", image: UIImage(named: "p3")),
            Place(title: "Just Relax...", image: UIImage(named: "p4")),
            Place(title: "And let us take care of the rest...", image: UIImage(named: "p5")),
            Place(title: "IOS Devs - Let's have fun ", image: UIImage(named: "p6"))]
    }
}