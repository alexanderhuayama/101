//
//  ViewController.swift
//  ELF_HuayamaGiovanni
//
//  Created by Giovanni on 12/1/17.
//  Copyright © 2017 Giovanni. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // LISTA DE CANCIONES
    var listaCanciones : NSMutableArray = []
    // REFERENCIA A LA COLECCION
    @IBOutlet weak var coleccionCanciones: UICollectionView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url: String = "https://itunes.apple.com/search?term=serialasesino&country=pe"
        
       // var body = Dictionary<String, AnyObject>()
        //body["seccionid"] = 17 as AnyObject
        
        
        if(NetworkManager.isConnectedToNetwork()){
            NetworkManager.sharedInstance.callUrlWithCompletion(url: url, params: nil, completion: {
                (finished, response) in
                if(finished){
                    //let json = response["GetNoticiasSeccionResult"] as! Dictionary<String, AnyObject>
                    //let array = NSMutableArray(array: json["Result"] as! NSArray)
                    let result = NSMutableArray(array: response["results"] as! NSArray)
                    self.listaCanciones = result
                    self.coleccionCanciones.reloadData()
                }else{
                    // Error de conexion
                }
            }, method: .get)
        }else{
            // indica que no hay internet
            
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension ViewController : UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.listaCanciones.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CeldaCancion", for: indexPath) as! CeldaCancion
        
        cell.itemCancion = self.listaCanciones[indexPath.row] as! Dictionary<String,AnyObject>
        
        cell.inicializarCelda()
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let w = (collectionView.frame.width - 30) / 2
        
        let h = w * 1.5
        
        return CGSize(width: w, height: h)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let cancionData = self.listaCanciones[indexPath.row] as! Dictionary<String,AnyObject>

        DetalleCancion.itemLista = cancionData
        
        let vc = UIStoryboard(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "DetalleCancion") as! DetalleCancion
        
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    
}


