//
//  ViewController.swift
//  keybord
//
//  Created by 神山駿 on 2021/02/09.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {

    @IBOutlet weak var logoImage: UIImageView!
    
    @IBOutlet weak var userName: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
    @IBOutlet weak var userNameLabel: UILabel!
    
    @IBOutlet weak var passwordLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userName.delegate = self
        password.delegate = self
    }

    @IBAction func signUp(_ sender: Any) {
        logoImage.image = UIImage(named: "loginOK")
        userNameLabel.text = userName.text
        passwordLabel.text = password.text
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
}

