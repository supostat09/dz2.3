//
//  SecondViewController.swift
//  dz2
//
//  Created by Абдулла-Бек on 15/3/23.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var fullNameTextField: UITextField!
    
    @IBOutlet weak var mobileNumberTextField: UITextField!
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var userNameTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var confirmPasswordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
  
    @IBAction func signUpButtonTapped(_ sender: Any) {
        guard let fullName = fullNameTextField.text, !fullName.isEmpty,
              let mobileNumber = mobileNumberTextField.text, !mobileNumber.isEmpty,
              let email = emailTextField.text, !email.isEmpty,
              let userName = userNameTextField.text, !userName.isEmpty,
              let password = passwordTextField.text, !password.isEmpty,
              let confirmPassword = confirmPasswordTextField.text, !confirmPassword.isEmpty else {
            fullNameTextField.layer.borderColor = UIColor.red.cgColor
            fullNameTextField.layer.borderWidth = 1
            fullNameTextField.placeholder = "Заполните, пожалуйста"
            mobileNumberTextField.layer.borderColor = UIColor.red.cgColor
            mobileNumberTextField.layer.borderWidth = 1
            mobileNumberTextField.placeholder = "Заполните, пожалуйста"
            emailTextField.layer.borderColor = UIColor.red.cgColor
            emailTextField.layer.borderWidth = 1
            emailTextField.placeholder = "Заполните, пожалуйста"
            userNameTextField.layer.borderColor = UIColor.red.cgColor
            userNameTextField.layer.borderWidth = 1
            userNameTextField.placeholder = "Заполните, пожалуйста"
            passwordTextField.layer.borderColor = UIColor.red.cgColor
            passwordTextField.layer.borderWidth = 1
            passwordTextField.placeholder = "Заполните, пожалуйста"
            confirmPasswordTextField.layer.borderColor = UIColor.red.cgColor
            confirmPasswordTextField.layer.borderWidth = 1
            confirmPasswordTextField.placeholder = "Заполните, пожалуйста"
            return
        }
        
        let vc: FifthViewController = storyboard?.instantiateViewController(withIdentifier: "FifthViewController") as! FifthViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func signInButtonTapped(_ sender: Any) {
        let vc: ViewController = storyboard?.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
