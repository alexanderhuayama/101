//
//  DetalleCancion.swift
//  ELF_HuayamaGiovanni
//
//  Created by Giovanni on 12/1/17.
//  Copyright © 2017 Giovanni. All rights reserved.
//

import UIKit

class DetalleCancion: UIViewController {
    
    static var itemLista: Dictionary<String, AnyObject>!
    
    //
    @IBOutlet weak var lblArtista: UILabel!
    @IBOutlet weak var lblCancion: UILabel!
    @IBOutlet weak var lblAlbum: UILabel!
    @IBOutlet weak var lblGenero: UILabel!
    @IBOutlet weak var imgCancion: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        let artista = DetalleCancion.itemLista["artistName"] as! String
        let cancion = DetalleCancion.itemLista["trackName"] as! String
        let album = DetalleCancion.itemLista["collectionName"] as! String
        let genero = DetalleCancion.itemLista["primaryGenreName"] as! String
        let imgCancion = DetalleCancion.itemLista["artworkUrl100"] as! String
        
        self.lblArtista.text = artista
        self.lblCancion.text = cancion
        self.lblAlbum.text = album
        self.lblGenero.text = genero
        self.imgCancion.sd_setImage(with: URL(string: imgCancion))
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
