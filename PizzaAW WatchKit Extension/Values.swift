//
//  Values.swift
//  PizzaAW
//
//  Created by Carlos Mauricio Idárraga Espitia on 3/17/16.
//  Copyright © 2016 Carlos Mauricio Idárraga Espitia. All rights reserved.
//

import WatchKit

class Values: NSObject {

    var tamano:String=""
    var masa:String=""
    var queso:String=""
    var ingredientes:String=""
    
    
    init(tam:String){
        tamano=tam
    }
    
    init(mas:String){
        masa=mas
    }
    
    init(ques:String){
        queso=ques
    }
    
    init(ingre:String){
        ingredientes=ingre
    }
    
    init(tam:String,mas:String,ques:String,ingre:String){
        tamano=tam
        masa=mas
        queso=ques
        ingredientes=ingre
    }
    
  /*  var _tamano:String{
        get{
            return tamano
        }
        set(value){
            tamano=value
        }
    }
    
    var _masa:String{
        get{
            return masa
        }
        set(value){
            masa=value
        }
    }
    
    var _queso:String{
        get{
            return queso
        }
        set(value){
            queso=value
        }
    }
    
    var _ingredientes:String{
        get{
            return ingredientes
        }
        set(value){
            ingredientes=value
        }
    }*/
}

   /* init(tam:String){
        tamano=tam
    }
    
    init(mas:String){
        masa=mas
    }
    
    init(ques:String){
        queso=ques
    }
    
    init(ingre:String){
        ingredientes=ingre
    }*/


