//
//  ViewController.swift
//  CalculadoraIMC
//
//  Created by System Administrator on 6/8/17.
//  Copyright © 2017 System Administrator. All rights reserved.
//  Ejemplo  de calculadora de IMC simple curso Universidad de Monterrey

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var scroll: UIScrollView!
    @IBOutlet weak var estatura: UITextField!
    @IBOutlet weak var peso: UITextField!
    @IBOutlet weak var resultado: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        peso.delegate=self
        estatura.delegate=self
    }

    // función que se lanza al editar un campo
    func textFieldDidBeginEditing(_ textField: UITextField) {
        
        // declaracion de variable punto como inicio
        var punto:CGPoint
        punto=CGPoint(x: 0, y: textField.frame.origin.y)
        // se pasa el punto de origen al scroll
        self.scroll.setContentOffset(punto, animated: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    // función que se ejecuta al finalizar la edición
    @IBAction func textFieldDidEndEditing(_ textField: UITextField) {
        self.scroll.setContentOffset(CGPoint.zero, animated: true)
    }
    
    @IBAction func textFileDoneEditing(sender: UITextField){
        
        sender.resignFirstResponder() // ocultar teclado
        
    }
    
    @IBAction func backgroundTap(sender:UIControl){
        
        peso.resignFirstResponder()
        estatura.resignFirstResponder()
        
    }
    @IBAction func calcularIMC(_ sender: AnyObject) {
        
        var IMC:Double
        let pesolocal:Double
        pesolocal=Double(self.peso.text!)!
        let estaturaLocal:Double=Double(self.estatura.text!)!
        IMC=pesolocal/(estaturaLocal*estaturaLocal)
        self.resultado.text = String(IMC)
        print("Resultado: \(IMC) ")
        
    }


}

