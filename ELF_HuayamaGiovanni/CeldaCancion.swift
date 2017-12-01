//
//  CeldaCancion.swift
//  ELF_HuayamaGiovanni
//
//  Created by Giovanni on 12/1/17.
//  Copyright © 2017 Giovanni. All rights reserved.
//

import UIKit
import SDWebImage

class CeldaCancion: UICollectionViewCell {
    // ITEM DE LA CANCION
    var itemCancion : Dictionary<String, AnyObject>!
    
    // REFERENCIAS
    @IBOutlet weak var lblNombre: UILabel!
    @IBOutlet weak var imgCancion: UIImageView!
    
    func inicializarCelda() {
        let url = self.itemCancion["artworkUrl100"] as! String
        let nombre = self.itemCancion["collectionName"] as! String
        
        self.imgCancion.sd_setImage(with: URL(string: url))
        self.lblNombre.text = nombre
    }
    
}
