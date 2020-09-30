//
//  MyCollectionViewCell.swift
//  TableCollectionView
//
//  Created by Ghassan  albakuaa  on 9/30/20.
//

import UIKit

class MyCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var cellSwitch: UISwitch!
    @IBOutlet weak var cellTitle: UILabel!
    @IBOutlet weak var cellButton: UIButton!
    @IBOutlet weak var cellImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
