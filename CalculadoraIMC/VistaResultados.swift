//
//  VistaResultados.swift
//  CalculadoraIMC
//
//  Created by Macintosh on 2/9/17.
//  Copyright © 2017 System Administrator. All rights reserved.
//

import UIKit

class VistaResultados: UIViewController {

    var indiceIM:Double = 0
    @IBOutlet weak var resultadoIMC: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        resultadoIMC.text = String(self.indiceIM)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
