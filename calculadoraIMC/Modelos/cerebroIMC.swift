//
//  cerebroIMC.swift
//  calculadoraIMC
//
//  Created by Mac15 on 12/10/21.
//

import Foundation
import UIKit

struct cerebroIMC {
    var objeto: objetoIMC?
    
    //Cálculos para el IMC
    
    mutating func calcularIMC(peso:Float, altura:Float)
    {
        let alturaM = altura / 100
        
        let valor = peso / (alturaM * alturaM)
        
        if valor <= 18.4 {
            objeto = objetoIMC(resultado: "\(valor)", mensaje: "Peso bajo", color:  #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1), imagen: UIImage(named: "sobrepeso"))
        } else if valor >= 18.5 && valor <= 24.9 {
            objeto = objetoIMC(resultado: "\(valor)", mensaje: "Peso normal", color: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1), imagen: UIImage(named: "normal"))
        } else if valor >= 25 && valor <= 29.9 {
            objeto = objetoIMC(resultado: "\(valor)", mensaje: "Sobrepeso", color: #colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1), imagen: UIImage(named: "sobrepeso"))
        } else if valor >= 30 && valor <= 34.9{
            objeto = objetoIMC(resultado: "\(valor)", mensaje: "Obesidad Grado I", color: #colorLiteral(red: 0.9372549057, green: 0.07909832893, blue: 0, alpha: 1), imagen: UIImage(named: "obesidad"))
        } else if valor >= 35 && valor <= 39.9{
            objeto = objetoIMC(resultado: "\(valor)", mensaje: "Obesidad Grado II", color: #colorLiteral(red: 0.9372549057, green: 0.07909832893, blue: 0, alpha: 1), imagen: UIImage(named: "obesidad"))
        } else {
            objeto = objetoIMC(resultado: "\(valor)", mensaje: "Obesidad Grado III", color: #colorLiteral(red: 0.9372549057, green: 0.07909832893, blue: 0, alpha: 1), imagen: UIImage(named: "obesidad"))
        }
    }
    
    func retornarValorIMC() -> String
    {
        let imc_string = objeto?.resultado ?? "0.0"
        
        let imc_float = (imc_string as NSString).floatValue
        
        let imc_rounded = String(format: "%.1f", imc_float)
        
        //print (imc_string)

        
        return imc_rounded
        
    }
    
    func retornarMensajeIMC() -> String
    {
        return objeto?.mensaje ?? "Sin mensaje"
    }
    
    func retornarColorIMC() -> UIColor
    {
        return objeto?.color ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        
    }
    
    func retornarImagen() -> UIImage
    {
        return objeto?.imagen ?? (UIImage(named: "imc"))!
    }
}
