//
//  ProductsViewController.swift
//  TableCollectionView
//
//  Created by Ghassan  albakuaa  on 9/29/20.
//

import UIKit

class ProductsViewController: UIViewController , UITableViewDelegate , UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!
    var arrProducts = [Product]()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        arrProducts.append(Product(title: "PART1" , photo: [UIImage(named:"dice1")!, UIImage(named:"dice2")! , UIImage(named:"dice3")! , UIImage(named:"dice2")! , UIImage(named:"dice3")!, UIImage(named:"dice2")!]))
        
        arrProducts.append(Product(title: "PART2" , photo: [UIImage(named:"dice1")!, UIImage(named:"dice2")! , UIImage(named:"dice3")!]))
        
        arrProducts.append(Product(title: "PART3" , photo: [UIImage(named:"dice1")!, UIImage(named:"dice2")! , UIImage(named:"dice3")!]))        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrProducts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tblProdectCell") as!
        ProductTableViewCell
        let product = arrProducts[indexPath.row]
        cell.setupCell(title: product.title, arrPhotos: product.photo)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
}

struct Product {
    let title : String
    let photo : [UIImage]
}

func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    tableView.deselectRow(at: indexPath, animated: true)
    
   // let image = self.determineImage(index: indexPath.row)
   // let image2 = self.arrProducts[indexPath.row]
   // let top = "Section: \(indexPath.section)"
   // let bottom = "Row: \(indexPath.row)"
   // let progress = Float(indexPath.row) / Float(self.random)
   
  
}
