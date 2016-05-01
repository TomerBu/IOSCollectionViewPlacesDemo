 

import UIKit

class PlaceCollectionViewCell: UICollectionViewCell{
    var place: Place? {
        didSet {
            updateUI()
        }
    }

    @IBOutlet weak var placeImageView: UIImageView!
    @IBOutlet weak var placeTitle: UILabel!
    
    private func updateUI(){
        placeTitle?.text = place?.title
        placeImageView?.image = place?.image
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.layer.cornerRadius = 10.0
        self.clipsToBounds = true
    }
}





















