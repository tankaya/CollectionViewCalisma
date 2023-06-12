//
//  DetayViewController.swift
//  CollectionViewOrnek
//
//  Created by Taner Kaya on 11.02.2023.
//

import UIKit

class DetayViewController: UIViewController {

    
    var detayResimAdi = ""
    var detayMeyveAdi = ""
    
    
    
    @IBOutlet weak var detayImage: UIImageView!
    
    
    @IBOutlet weak var detayLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        detayLabel.text = detayMeyveAdi
        
        detayImage.image = UIImage(named: detayResimAdi)
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
