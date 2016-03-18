//
//  InterfaceController.swift
//  PizzaAW WatchKit Extension
//
//  Created by Carlos Mauricio Idárraga Espitia on 3/17/16.
//  Copyright © 2016 Carlos Mauricio Idárraga Espitia. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    
    var chicaS:Bool=false
    var medianaS:Bool=false
    var grandeS:Bool=false
    
    @IBOutlet var swChicaOut: WKInterfaceSwitch!
    @IBOutlet var swMedianaOut: WKInterfaceSwitch!
    @IBOutlet var swGrandeOut: WKInterfaceSwitch!
    
    @IBAction func swChica(value: Bool) {
        chicaS=value
        if(chicaS){
            swMedianaOut.setOn(false)
            swGrandeOut.setOn(false)
            medianaS=false
            grandeS=false
        }
    }
    
    @IBAction func sMediana(value: Bool) {
        medianaS=value
        if(medianaS){
            swChicaOut.setOn(false)
            swGrandeOut.setOn(false)
            chicaS=false
            grandeS=false
        }
    }
    
    @IBAction func sGrande(value: Bool) {
        grandeS=value
        if(grandeS){
            swMedianaOut.setOn(false)
            swChicaOut.setOn(false)
            medianaS=false
            chicaS=false
        }
    }

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
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
        
        let resultado=tamanoPizza()
        let valorContexto=Values(tam: resultado, mas: "", ques: "", ingre: "")
       // pushControllerWithName("IdentificadorValor", context: valorContexto)

       // let value = Values()
       // value._tamano=resultado
       // let valorContexto=value
        pushControllerWithName("IdTipoMasa", context: valorContexto)
        print(resultado)
    }
    
    func tamanoPizza()->String{
        
        var tamano:String = ""
        if(chicaS){
            tamano = "Chica"
        }else if(medianaS){
            tamano = "Mediana"
        }else if(grandeS){
            tamano = "Grande"
        }
        return tamano
    }
}
