 
 import UIKit
 
 class MainViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource{
    @IBOutlet weak var backgroundImage: UIImageView!
    @IBOutlet weak var collectionView: UICollectionView!
    
    
    // MARK: - UICollectionViewDataSource
    private var places = PlacesDataSource.places
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return .LightContent
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int{
        return 1
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int{
        return places.count
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell{
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("PlaceCollectionViewCell", forIndexPath: indexPath) as! PlaceCollectionViewCell
        
        cell.place = self.places[indexPath.item]
        
        return cell
    }
    
    func scrollViewDidScroll(scrollView: UIScrollView) {
        let paths = collectionView.indexPathsForVisibleItems()
        paths.forEach { (path) -> () in
            guard let cell = self.collectionView.cellForItemAtIndexPath(path) as? PlaceCollectionViewCell else {return}
            //let attr = collectionView.layoutAttributesForItemAtIndexPath(path)
            UIView.animateWithDuration(0.3, animations: { () -> Void in
                cell.transform = CGAffineTransformMakeScale(1.1, 1.1)
            })
        }
    }
    
 }
 
 // extension MainViewController : UICollectionViewDelegateFlowLayout {
 //    //
 //    func collectionView(collectionView: UICollectionView,
 //        layout collectionViewLayout: UICollectionViewLayout,
 //        sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
 //
 //            var randWidth = (1 + CGFloat(arc4random_uniform(UInt32(4)))) * view.bounds.width/6
 //
 //            var randHeight = (1 + CGFloat(arc4random_uniform(UInt32(4))))  * view.bounds.height/6
 //
 //            var size = CGSize(width: randWidth, height: randHeight)
 //
 //            let data = places[indexPath.item]
 //            //You can take the size data from the data itself. say the size of the image... etc
 //            return size
 //
 //    }
 //
 //    //
 //    func collectionView(collectionView: UICollectionView,
 //        layout collectionViewLayout: UICollectionViewLayout,
 //        insetForSectionAtIndex section: Int) -> UIEdgeInsets {
 //            return UIEdgeInsets(top: 20, left: 20, bottom: 20, right: 20)
 //    }
 // }
 //
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
