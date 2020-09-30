//
//  DetailViewController.swift
//  TableCollectionView
//
//  Created by Ghassan  albakuaa  on 9/30/20.
//

import UIKit

class DetailViewController: UIViewController {
    var delegate: ViewController = ViewController()
    
    @IBOutlet weak var back: UIButton!
    @IBOutlet weak var myButton: UISwitch!
    @IBOutlet weak var mySwitch: UISwitch!
    @IBOutlet weak var myTitle: UILabel!
    @IBOutlet weak var myImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onBack(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
