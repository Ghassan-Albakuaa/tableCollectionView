//
//  ViewController.swift
//  TableCollectionView
//
//  Created by Ghassan  albakuaa  on 9/29/20.
//

import UIKit

class ViewController: UIViewController ,UICollectionViewDelegate ,UICollectionViewDataSource {
    var images: [UIImage?] = []
    
    @IBOutlet weak var myCollection: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        myCollection.register(UINib.init(nibName: "MyCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "myCell")
        for _ in 0..<30 {
            images.append((UIImage.init(named: "dice1")))
        }
    }
    
    override func prepare (for segue: UIStoryboardSegue, sender: Any?)
    {
        if let destinationVC = segue.destination as?
            DetailViewController {
            destinationVC.delegate = self
            if let myCell = sender as? MyCollectionViewCell {
               
          destinationVC.myImage.image = myCell.cellImage.image
                    destinationVC.myTitle = myCell.cellTitle
                    destinationVC.mySwitch = myCell.cellSwitch
                
                
        }
    }
   
    }
    
    func onBackAction() {
        myCollection.reloadData()
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
       let cell = collectionView.deselectItem(at: indexPath, animated: true)
        performSegue(withIdentifier: "toDetail", sender: cell)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "myCell" , for: indexPath) as? MyCollectionViewCell {
            
            cell.cellImage.image = images[indexPath.row]
            return cell
    }
        else {
            
            return MyCollectionViewCell()
            
        }
       
        
    }
}
