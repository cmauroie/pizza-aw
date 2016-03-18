//
//  DetallesInterfaceController.swift
//  PizzaAW
//
//  Created by Carlos Mauricio Idárraga Espitia on 3/18/16.
//  Copyright © 2016 Carlos Mauricio Idárraga Espitia. All rights reserved.
//

import WatchKit
import Foundation


class DetallesInterfaceController: WKInterfaceController {
    
    
    @IBOutlet var labelTamano: WKInterfaceLabel!
    @IBOutlet var labelMasa: WKInterfaceLabel!
    @IBOutlet var labelQueso: WKInterfaceLabel!
    @IBOutlet var labelIngredientes: WKInterfaceLabel!
    @IBOutlet var labelTitle: WKInterfaceLabel!
    @IBOutlet var btnConfirmarOut: WKInterfaceButton!
    
    var tamaStr:String="";
    var tipoMasaStr:String="";
    var tipoQuesoStr:String="";
    var ingredientes:String="";


    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        btnConfirmarOut.setHidden(false)
        let c=context as! Values
        labelTamano.setText(c.tamano)
        labelMasa.setText(c.masa)
        labelQueso.setText(c.queso)
        labelIngredientes.setText(c.ingredientes)
        
        tamaStr=c.tamano
        tipoMasaStr=c.masa
        tipoQuesoStr=c.queso
        ingredientes=c.ingredientes
        
        print("ingredientes: "+c.ingredientes)
        
        if(tamaStr==""){
            labelTitle.setText("Por favor selecciona el tamaño de la pizza")
            btnConfirmarOut.setHidden(true)
        }
        if(tipoMasaStr==""){
            labelTitle.setText("Por favor selecciona el tipo de masa")
            btnConfirmarOut.setHidden(true)
        }
        if(tipoQuesoStr==""){
            labelTitle.setText("Por favor selecciona el tipo de queso")
            btnConfirmarOut.setHidden(true)
        }
        if(ingredientes==""){
            labelTitle.setText("Por favor selecciona los ingredientes")
            btnConfirmarOut.setHidden(true)
        }
        
        
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func btnConfirmar() {
        
        if(tamaStr != "" && tipoMasaStr != "" && tipoQuesoStr != "" && ingredientes != ""){
            labelTitle.setText("Pedido enviado a cocina")
            btnConfirmarOut.setHidden(true)
        }

    }
}
