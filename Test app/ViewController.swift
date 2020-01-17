//
//  ViewController.swift
//  Test app
//
//  Created by Alex on 18/06/2019.
//  Copyright © 2019 Alex. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField1: UITextField!
    
    @IBAction func button1(_ sender: UIButton) {
        performSegue(withIdentifier: "normalSegue", sender: nil)
        //если segue не привязан к кнопке
    }
    
    @IBAction func unwindToMainScreen(segue: UIStoryboardSegue){
        guard segue.identifier == "unwindSegue" else {return }
        guard let svc = segue.source as? ViewController2 else {return }
        self.textField1.text = svc.text2.text
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let dvc = segue.destination as? ViewController2 else {return }
        dvc.msg = textField1.text
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

}

