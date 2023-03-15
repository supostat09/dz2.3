//
//  ViewController.swift
//  dz2
//
//  Created by Абдулла-Бек on 10/3/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func signInButtonTapped(_ sender: Any) {
        guard let email = emailTextField.text, !email.isEmpty,
              let password = passwordTextField.text, !password.isEmpty else {
            emailTextField.layer.borderColor = UIColor.red.cgColor
            emailTextField.layer.borderWidth = 1
            emailTextField.placeholder = "Заполните, пожалуйста"
            passwordTextField.layer.borderColor = UIColor.red.cgColor
            passwordTextField.layer.borderWidth = 1
            passwordTextField.placeholder = "Заполните, пожалуйста"
            return
        }
        
        let vc: FifthViewController = storyboard?.instantiateViewController(withIdentifier: "FifthViewController") as! FifthViewController
        self.navigationController?.pushViewController(vc, animated: true)
            
    }
    
    @IBAction func forgotPasswordButtonTapped(_ sender: Any) {
        let vc: ThirdViewController = storyboard?.instantiateViewController(withIdentifier: "ThirdViewController") as! ThirdViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func signUpButtonTapped(_ sender: Any) {
        let vc: SecondViewController = storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
