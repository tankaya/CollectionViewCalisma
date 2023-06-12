//
//  ViewController.swift
//  CollectionViewOrnek
//
//  Created by Taner Kaya on 5.02.2023.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
    
    
    var seciliMeyveAdi = ""
    var seciliMeyveImage = ""
    
    
    // kac kayit veri gosterecegim?
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return setData.data.dataGet().count
    }
    
    
    // hangi elemanlari gosterecegim?
    // bu fonksiyon, gizli bir for dongusu varmis gibi calisir.
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "meyvelerCell", for: indexPath) as? MeyvelerCollectionViewCell {
            
           let siradakiMeyve =  setData.data.dataGet()[indexPath.row]
            
            cell.meyveAdi.text = siradakiMeyve.meyveName
            cell.meyveResmi.image = UIImage(named: siradakiMeyve.meyveImage)
            
            
            return cell
            
        }
        else{
            
            return MeyvelerCollectionViewCell()
            
        }
            
            
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let siradakiMeyve =  setData.data.dataGet()[indexPath.row]
        seciliMeyveAdi = siradakiMeyve.meyveImage
        seciliMeyveImage = siradakiMeyve.meyveImage
        
        performSegue(withIdentifier: "DetayaGit", sender: nil)
        
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "DetayaGit" {
            
            let detayVC = segue.destination as? DetayViewController
            
            detayVC!.detayMeyveAdi = seciliMeyveAdi
            detayVC?.detayResimAdi = seciliMeyveImage
        }
    }
    

    
    @IBOutlet weak var meyvelerCollectionView: UICollectionView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


}

