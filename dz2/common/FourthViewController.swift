//
//  FourthViewController.swift
//  dz2
//
//  Created by Абдулла-Бек on 15/3/23.
//

import UIKit

class FourthViewController: UIViewController {
    
    @IBOutlet weak var newPasswordTextField: UITextField!
    
    
    @IBOutlet weak var confirmPasswordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func submitButtonTapped(_ sender: Any) {
        guard let newPassword = newPasswordTextField.text, !newPassword.isEmpty,
              let confirmPassword = confirmPasswordTextField.text, !confirmPassword.isEmpty else {
            
            if newPasswordTextField.text?.isEmpty ?? true {
                newPasswordTextField.layer.borderColor = UIColor.red.cgColor
                newPasswordTextField.layer.borderWidth = 1
            }
            if confirmPasswordTextField.text?.isEmpty ?? true {
                confirmPasswordTextField.layer.borderColor = UIColor.red.cgColor
                confirmPasswordTextField.layer.borderWidth = 1
            }
            return
        }
        if newPassword != confirmPassword {
            newPasswordTextField.layer.borderColor = UIColor.red.cgColor
            newPasswordTextField.layer.borderWidth = 1
            confirmPasswordTextField.layer.borderColor = UIColor.red.cgColor
            confirmPasswordTextField.layer.borderWidth = 1
            return
        }
        let vc: FifthViewController = storyboard?.instantiateViewController(withIdentifier: "FifthViewController") as! FifthViewController
                navigationController?.pushViewController(vc, animated: true)
    }
}
