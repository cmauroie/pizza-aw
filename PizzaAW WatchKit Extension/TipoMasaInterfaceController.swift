//
//  TipoMasaInterfaceController.swift
//  PizzaAW
//
//  Created by Carlos Mauricio Idárraga Espitia on 3/17/16.
//  Copyright © 2016 Carlos Mauricio Idárraga Espitia. All rights reserved.
//

import WatchKit
import Foundation


class TipoMasaInterfaceController: WKInterfaceController {
    
    
    var delgadaS:Bool=false
    var crujienteS:Bool=false
    var gruesaS:Bool=false
    
    var tamano:String=""
    
    @IBOutlet var swDelgadaOut: WKInterfaceSwitch!
    @IBOutlet var swCrujienteOut: WKInterfaceSwitch!
    @IBOutlet var swGruesaOut: WKInterfaceSwitch!
    
    
    @IBAction func swDelgada(value: Bool) {
        delgadaS=value
        if(delgadaS){
            swCrujienteOut.setOn(false)
            swGruesaOut.setOn(false)
            crujienteS=false
            gruesaS=false
        }
        
    }
    
    @IBAction func swCrujiente(value: Bool) {
        crujienteS=value
        if(crujienteS){
            swDelgadaOut.setOn(false)
            swGruesaOut.setOn(false)
            delgadaS=false
            gruesaS=false
        }
    }
    
    
    @IBAction func swGruesa(value: Bool) {
        gruesaS=value
        if(gruesaS){
            swDelgadaOut.setOn(false)
            swCrujiente(false)
            delgadaS=false
            crujienteS=false
        }
    }
    
    func tipoMasa()->String{
        
        var tipo:String = ""
        if(delgadaS){
            tipo = "Delgada"
        }else if(crujienteS){
            tipo = "Crujiente"
        }else if(gruesaS){
            tipo = "Gruesa"
        }
        return tipo
    }


    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        let c=context as! Values
        tamano=c.tamano
        //etiquetaResultado.setText(String(c.tamanovalorIMC))

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
        let resultado=tipoMasa()
        let valorContexto=Values(tam: tamano, mas: resultado, ques:"", ingre:"")

        
        pushControllerWithName("IdTipoQueso", context: valorContexto)
        print("1: "+valorContexto.tamano+"2: "+valorContexto.masa)
    }
}
