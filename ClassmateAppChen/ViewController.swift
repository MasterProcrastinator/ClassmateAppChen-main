//
//  ViewController.swift
//  ClassmateAppChen
//
//  Created by ALVIN CHEN on 10/11/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func classmateButton(_ sender: UIButton) {
        
        performSegue(withIdentifier: "segue", sender: self)
    }
    
}

