//
//  ViewController.swift
//  Data-Project
//
//  Created by Lubov Burbygina on 06.05.2022.
//

import UIKit



class ViewController: UIViewController {
    
    
    @IBOutlet weak var nameTF: UITextField!
    
    
    @IBOutlet weak var phoneTF: UITextField!
    
    
    @IBOutlet weak var passwordTF: UITextField!
    
    
    @IBOutlet weak var buttonNext: UIButton!
    
    
    @IBAction func loginTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "dataSegue", sender: nil)
    }
    
    @IBAction func unwindSegueToMainScreen(segue: UIStoryboardSegue) {
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let dvc = segue.destination as? SecondViewController else { return }
        dvc.name = nameTF.text
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        buttonNext.layer.cornerRadius = 30
        
    }
}

