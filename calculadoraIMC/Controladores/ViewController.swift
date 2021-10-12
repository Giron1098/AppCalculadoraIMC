//
//  ViewController.swift
//  calculadoraIMC
//
//  Created by Mac15 on 12/10/21.
//

import UIKit

class ViewController: UIViewController {
    
    var cerebro = cerebroIMC()

    @IBOutlet weak var LBL_Peso: UILabel!
    @IBOutlet weak var LBL_Estatura: UILabel!
    
    @IBOutlet weak var SLD_Peso: UISlider!
    @IBOutlet weak var SLD_Estatura: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        LBL_Peso.text = "\(SLD_Peso.value) KG"
        LBL_Estatura.text = "\(SLD_Estatura.value) CM"
    }

    @IBAction func SLD_Peso_Action(_ sender: UISlider) {
        //print(sender.value)
        LBL_Peso.text = "\(String(format: "%.1f",sender.value)) KG"
    }
    
    @IBAction func SLD_Estatura_Action(_ sender: UISlider) {
        //print(sender.value)
        LBL_Estatura.text = "\(String(format: "%.1f",sender.value)) CM"
    }
    
    @IBAction func BTN_CalcularIMC_Action(_ sender: UIButton) {
        
        //Calcular IMC
        
        let peso = SLD_Peso.value
        let estatura = SLD_Estatura.value
        
        //Creación del objeto cerebroIMC
        
        cerebro.calcularIMC(peso:peso, altura:estatura)
        
        performSegue(withIdentifier: "calcularIMC", sender: nil)

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "calcularIMC"
        {
            let destino = segue.destination as! CalcularIMC_ViewController
            destino.valorIMC = cerebro.retornarValorIMC()
            destino.msg = cerebro.retornarMensajeIMC()
            destino.color = cerebro.retornarColorIMC()
            destino.imagen = cerebro.retornarImagen()
        }
    }
    
    
    
}

