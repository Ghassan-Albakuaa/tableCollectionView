//
//  ProductTableViewCell.swift
//  TableCollectionView
//
//  Created by Ghassan  albakuaa  on 9/29/20.
//

import UIKit

class ProductTableViewCell: UITableViewCell , UICollectionViewDelegate , UICollectionViewDataSource , UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var collectionview: UICollectionView!
    @IBOutlet weak var lblTitle: UILabel!
    var arrPhotos = [UIImage]()
    override func awakeFromNib() {
        super.awakeFromNib()
        
        collectionview.delegate = self
        collectionview.dataSource = self
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func setupCell(title: String , arrPhotos : [UIImage])  {
        self.lblTitle.text = title
        self.arrPhotos = arrPhotos
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrPhotos.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionview.dequeueReusableCell(withReuseIdentifier: "colProductCell", for: indexPath) as! ProductCollectionViewCell
        cell.imgProductPhoto.image = arrPhotos[indexPath.row]
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionview.frame.width * 0.3, height: collectionview.frame.height * 0.3)
    }
}
