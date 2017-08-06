//
//  ViewController.swift
//  CalculadoraIMC
//
//  Created by System Administrator on 6/8/17.
//  Copyright © 2017 System Administrator. All rights reserved.
//  Ejemplo  de calculadora de IMC simple curso Universidad de Monterrey

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var estatura: UITextField!
    @IBOutlet weak var peso: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        peso.delegate=self
        estatura.delegate=self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
        print("Resultado: \(IMC) ")
        
    }


}

