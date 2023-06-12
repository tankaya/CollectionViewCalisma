//
//  Meyve.swift
//  CollectionViewOrnek
//
//  Created by Taner Kaya on 5.02.2023.
//

import Foundation

struct Meyve {
    
    var meyveImage : String
    var meyveName : String
    
    init(meyveImage: String, meyveName: String) {
        self.meyveImage = meyveImage
        self.meyveName = meyveName
    }
    
}

// singleton design pattern
class setData {
    static let data  = setData()
    
    let meyveListesi =
    [
        Meyve(meyveImage: "ananas", meyveName: "Ananas"),
        Meyve(meyveImage: "cilek", meyveName: "Cilek"),
        Meyve(meyveImage: "domates", meyveName: "Domates"),
        Meyve(meyveImage: "erik", meyveName: "Erik"),
    ]
    
    
    //icine meyve tipinde veri alan bir array doner.
    
    func dataGet() -> [Meyve]{
        
        return meyveListesi
    }
    
}
