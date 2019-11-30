import UIKit

private let reuseIdentifier = "Photo"

class PhotoController: UICollectionViewController {
    
    var photoCollection = [1, 2, 3, 4, 5, 6, 7]

    override func viewDidLoad() {
        super.viewDidLoad()

        // self.collectionView!.register(PhotoCell.self, forCellWithReuseIdentifier: reuseIdentifier)

    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {

        return photoCollection.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Photo", for: indexPath) as! PhotoCell
        return cell
    }

    class PhotoCell: UICollectionViewCell {
        
        @IBOutlet weak var photo: UIImageView!
        
    }
}
