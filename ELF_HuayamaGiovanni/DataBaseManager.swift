//
//  DataBaseManager.swift
//  ELF_HuayamaGiovanni
//
//  Created by Giovanni on 12/1/17.
//  Copyright © 2017 Giovanni. All rights reserved.
//

import Foundation
import MagicalRecord

class DataBaseManager {
    static let sharedInstance = DataBaseManager()
    /*
    func saveObjectDataBaseChanges(){
        NSManagedObjectContext.mr_default().mr_saveToPersistentStoreAndWait()
    }
    
    
    func createObject() -> Cancion{
        let a = Cancion.mr_createEntity()
        a?.identificador = -1
        a?.nombre = ""
        a?.fotoAlbum = ""
        a?.precioalbum = ""
        self.saveObjectDataBaseChanges()
        return a!
    }
    
    func getObjectArray() -> NSArray {
        let arr : NSArray = Cancion.mr_findAll()! as NSArray
        return arr
    }
    
    func getObjectByKey(attribute: String, value: AnyObject) -> Cancion{
        let a = Cancion.mr_find(byAttribute: attribute, withValue: value)
        return a![0] as! Cancion
    }
    
    func getGroupOfObjectsByKey(attribute: String, value: AnyObject) -> [AnyObject]{
        let p = Cancion.mr_find(byAttribute: attribute, withValue: value)
        
        return p!
    }
    
    func deleteObject(c : Cancion){
        c.mr_deleteEntity()
        self.saveObjectDataBaseChanges()
    }
    
    func deleteObjectTable(){
        Cancion.mr_truncateAll()
        self.saveObjectDataBaseChanges()
    }
    */
}
