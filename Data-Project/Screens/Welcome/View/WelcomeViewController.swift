//
//  SecondViewController.swift
//  Data-Project
//
//  Created by Lubov Burbygina on 11.05.2022.
//

import UIKit

class WelcomeViewController: UIViewController {

    var name: String?
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var buttonBack: UIButton!
    
    @IBAction func backButton(_ sender: UIButton) {
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        buttonBack.layer.cornerRadius = 30
        
        guard let name = self.name else { return }
        label.text = "Hello, \(name)"
        
    }
}
