//
//  ViewController.swift
//  Eggs
//
//  Created by Mateo Balderas on 14.10.2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func OnSoftEgg(_ sender: Any) {
        
        performSegue(withIdentifier: "softEggGo", sender: self)
    }
    @IBAction func OnMediumEgg(_ sender: Any) {
        
        performSegue(withIdentifier: "mediumEggGo", sender: self)
    }
    @IBAction func OnHardEgg(_ sender: Any) {
        
        performSegue(withIdentifier: "hardEggGo", sender: self)
    }
    @IBAction func goHome(_ sender: Any) {
        performSegue(withIdentifier: "softEggGo", sender: self)
    }
    
}

