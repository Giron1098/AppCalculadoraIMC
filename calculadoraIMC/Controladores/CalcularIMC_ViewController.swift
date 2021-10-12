//
//  CalcularIMC_ViewController.swift
//  calculadoraIMC
//
//  Created by Mac15 on 12/10/21.
//

import UIKit

class CalcularIMC_ViewController: UIViewController {
    
    var valorIMC:String?
    var msg:String?
    var color:UIColor?
    var imagen:UIImage?
    
    @IBOutlet weak var LBL_valorIMC: UILabel!
    @IBOutlet weak var LBL_mensajeIMC: UILabel!
    
    @IBOutlet weak var IV_Imagen: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        LBL_valorIMC.text = valorIMC
        LBL_mensajeIMC.text = msg
        
        self.view.backgroundColor = color
        
        IV_Imagen.image = imagen
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
