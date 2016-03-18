//
//  IngredientesInterfaceController.swift
//  PizzaAW
//
//  Created by Carlos Mauricio Idárraga Espitia on 3/18/16.
//  Copyright © 2016 Carlos Mauricio Idárraga Espitia. All rights reserved.
//

import WatchKit
import Foundation


class IngredientesInterfaceController: WKInterfaceController {
    
    var jamon:Bool=false
    var aceituna:Bool=false
    var pepperoni:Bool=false
    var cebolla:Bool=false
    var pavo:Bool=false
    var pimiento:Bool=false
    var salchicha:Bool=false
    var pina:Bool=false
    var anchoa:Bool=false
    
    var ingre_Jamon:String="";
    var ingre_Aceituna:String="";
    var ingre_Pepperoni:String="";
    var ingre_Cebolla:String="";
    var ingre_Pavo:String="";
    var ingre_Pimiento:String="";
    var ingre_Salchicha:String="";
    var ingre_Pina:String="";
    var ingre_Anchoa:String=""
    
    var tamano:String=""
    var masa:String=""
    var queso:String=""

    
    var num:Int=0
    
    
    @IBOutlet var swJamonOut: WKInterfaceSwitch!
    @IBOutlet var swAceitunaOut: WKInterfaceSwitch!
    @IBOutlet var swPepperoniOut: WKInterfaceSwitch!
    @IBOutlet var swCebollaOut: WKInterfaceSwitch!
    @IBOutlet var swPavoOut: WKInterfaceSwitch!
    @IBOutlet var swPimientoOut: WKInterfaceSwitch!
    @IBOutlet var swSalchichaOut: WKInterfaceSwitch!
    @IBOutlet var swPinaOut: WKInterfaceSwitch!
    @IBOutlet var swAnchoaOut: WKInterfaceSwitch!
    
    
    @IBAction func swJamon(value: Bool) {
        jamon=value
        
        if(jamon){
        switchValueDidChange()
                   }
    }
    
    
    @IBAction func swAceituna(value: Bool) {
        aceituna=value
        if(aceituna){
           switchValueDidChange()        }
    }
    
    
    @IBAction func swPepperoni(value: Bool) {
        pepperoni=value
        if(pepperoni){
           switchValueDidChange()
        }
    }
    
    
    @IBAction func swCebolla(value: Bool) {
        cebolla=value
        if(cebolla){
            switchValueDidChange()
        }
    }

    @IBAction func swPavo(value: Bool) {
        
        pavo=value
        if(pavo){
            switchValueDidChange()
        }
    }
    
    
    @IBAction func swPimiento(value: Bool) {
        pimiento=value
        if(pimiento){
            switchValueDidChange()
        }
    }
    
    
    @IBAction func swSalchicha(value: Bool) {
        salchicha=value
        if(salchicha){
            switchValueDidChange()
        }
    }
    
    
    @IBAction func swPina(value: Bool) {
        pina=value
        if(pina){
            switchValueDidChange()
        }
    }
    
    @IBAction func swAnchoa(value: Bool) {
        anchoa=value
        if(anchoa){
            switchValueDidChange()
        }
    }
    
    func ingredientes()->String{
        
        var addIngre:String = ""
        
        if(jamon){
            ingre_Jamon = "Jamon"
            addIngre = addIngre+"\(ingre_Jamon)\n"
        }
        if(aceituna){
            ingre_Aceituna = "Aceituna"
            addIngre = addIngre+"\(ingre_Aceituna)\n"
        }
        if(pepperoni){
            ingre_Pepperoni = "Pepperoni"
            addIngre = addIngre+"\(ingre_Pepperoni)\n"
        }
        if(cebolla){
            ingre_Cebolla = "Cebolla"
            addIngre = addIngre+"\(ingre_Cebolla)\n"
        }
        if(pavo){
            ingre_Pavo = "Pavo"
            addIngre = addIngre+"\(ingre_Pavo)\n"
        }
        if(pimiento){
            ingre_Pimiento = "Pimiento"
            addIngre = addIngre+"\(ingre_Pimiento)\n"
        }
        if(salchicha){
            ingre_Salchicha = "Salchicha"
            addIngre = addIngre+"\(ingre_Salchicha)\n"
        }
        if(pina){
            ingre_Pina = "Piña"
            addIngre = addIngre+"\(ingre_Pina)\n"
        }
        
        if(anchoa){
            ingre_Anchoa = "Anchoa"
            addIngre = addIngre+"\(ingre_Anchoa)\n"
        
        }
        return addIngre
    }
    
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        let c=context as!Values
        tamano=c.tamano
        masa=c.masa
        queso=c.queso
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
        let resultado=ingredientes()
        let valorContexto=Values(tam: tamano, mas: masa, ques: queso, ingre: resultado)
        pushControllerWithName("IdDetalles", context: valorContexto)
        print(resultado)
    }

    func Ingre_Dispo()->Int{
        
        num = num + 1;
        
        if(num <= 5){
            return num
        }else{
            return num
        }
    }
    
    func switchValueDidChange() {
        
        var num2:Int = 0
        
        num2 = Ingre_Dispo()
        
        if (num2 > 5){
            swJamonOut.setOn(false)
            swAceitunaOut.setOn(false)
            swPepperoniOut.setOn(false)
            swCebollaOut.setOn(false)
            swPavoOut.setOn(false)
            swPimientoOut.setOn(false)
            swSalchichaOut.setOn(false)
            swPinaOut.setOn(false)
            swAnchoaOut.setOn(false)
            
            jamon=false
            aceituna=false
            pepperoni=false
            cebolla=false
            pavo=false
            pimiento=false
            salchicha=false
            pina=false
            anchoa=false
            
        //  LabelMax.text = "No puedes seleccionar más de 5 ingredientes"
        /*  switchJamo.setOn(false, animated: false)
            switchAceituna.setOn(false, animated: false)
            switchPepperoni.setOn(false, animated: false)
            switchCebolla.setOn(false, animated: false)
            switchPavo.setOn(false, animated: false)
            switchPimiento.setOn(false, animated: false)
            switchSalchicha.setOn(false, animated: false)
            switchPina.setOn(false, animated: false)*/
            
            num = 0;
            
        }
        //else{
        //    LabelMax.text = "Número de ingredientes \(num2)"
        //}
    }
}
