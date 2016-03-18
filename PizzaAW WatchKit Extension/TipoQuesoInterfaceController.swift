//
//  TipoQuesoInterfaceController.swift
//  PizzaAW
//
//  Created by Carlos Mauricio Idárraga Espitia on 3/17/16.
//  Copyright © 2016 Carlos Mauricio Idárraga Espitia. All rights reserved.
//

import WatchKit
import Foundation


class TipoQuesoInterfaceController: WKInterfaceController {
    
    var mosarellaS:Bool=false
    var cheddarS:Bool=false
    var parmesanoS:Bool=false
    var sinQuesoS:Bool=false
    
    var tamano:String=""
    var masa:String=""

    @IBOutlet var swMozarelaOut: WKInterfaceSwitch!
    @IBOutlet var swCheddarOut: WKInterfaceSwitch!
    @IBOutlet var swParmesanoOut: WKInterfaceSwitch!
    @IBOutlet var swSinQuesoOut: WKInterfaceSwitch!
    
    @IBAction func swMozarela(value: Bool) {
        mosarellaS=value
        if(mosarellaS){
            swCheddarOut.setOn(false)
            swParmesanoOut.setOn(false)
            swSinQuesoOut.setOn(false)
            cheddarS=false
            parmesanoS=false
            sinQuesoS=false
        }
    }
    
    @IBAction func swCheddar(value: Bool) {
        cheddarS=value
        if(cheddarS){
            swMozarelaOut.setOn(false)
            swParmesanoOut.setOn(false)
            swSinQuesoOut.setOn(false)
            mosarellaS=false
            parmesanoS=false
            sinQuesoS=false
        }
    }
   
    @IBAction func swParmesano(value: Bool) {
        parmesanoS=value
        if(parmesanoS){
            swMozarelaOut.setOn(false)
            swCheddarOut.setOn(false)
            swSinQuesoOut.setOn(false)
            mosarellaS=false
            cheddarS=false
            sinQuesoS=false
        }
    }
    
    
    @IBAction func swSinQueso(value: Bool) {
        sinQuesoS=value
        if(sinQuesoS){
            swMozarelaOut.setOn(false)
            swCheddarOut.setOn(false)
            swParmesanoOut.setOn(false)
            mosarellaS=false
            cheddarS=false
            parmesanoS=false
        }
    }
    
    func tipoQueso()->String{
        
        var tipo:String = ""
        
        if(mosarellaS){
            tipo = "Mozarela"
        }else if(cheddarS){
            tipo = "Cheddar"
        }else if(parmesanoS){
            tipo = "Parmesano"
        }else if(sinQuesoS){
            tipo = "Sin queso"
        }
        return tipo
    }

    
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        let c=context as! Values
        
        tamano =  c.tamano
        masa = c.masa
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    
    @IBAction func btnContinuar() {
        
        let resultado=tipoQueso()
        let valorContexto=Values(tam: tamano, mas: masa, ques: resultado, ingre: "")
        pushControllerWithName("IdIngrediente", context: valorContexto)
        print(resultado)
    }

}
