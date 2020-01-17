//
//  ViewController2.swift
//  Test app
//
//  Created by Alex on 18/06/2019.
//  Copyright © 2019 Alex. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {

    
    var msg: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        text2.text = msg
        
    }
    
    @IBOutlet weak var text2: UITextField!
    
    @IBAction func button2(_ sender: Any) {
        performSegue(withIdentifier: "unwindSegue", sender: nil)
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}
