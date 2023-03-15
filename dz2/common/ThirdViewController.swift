//
//  ThirdViewController.swift
//  dz2
//
//  Created by Абдулла-Бек on 15/3/23.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet weak var phoneNumberTextField: UITextField!
    
    @IBOutlet weak var smsCodeTextField: UITextField!
    
    @IBOutlet weak var submitButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        smsCodeTextField.isEnabled = false
    }
    
    @IBAction func getOtpButtonTapped(_ sender: Any) {
        guard let phoneNumber = phoneNumberTextField.text, !phoneNumber.isEmpty else {
            phoneNumberTextField.layer.borderColor = UIColor.red.cgColor
            phoneNumberTextField.layer.borderWidth = 1
            return
        }
        smsCodeTextField.isEnabled = true
    }
    
    @IBAction func submitButtonTapped(_ sender: Any) {
        guard let smsCode = smsCodeTextField.text, !smsCode.isEmpty else {
            smsCodeTextField.layer.borderColor = UIColor.red.cgColor
            smsCodeTextField.layer.borderWidth = 1
            return
        }
        let vc: FourthViewController = storyboard?.instantiateViewController(withIdentifier: "FourthViewController") as! FourthViewController
                navigationController?.pushViewController(vc, animated: true)
    }
}
