//
//  ViewController.swift
//  dz 33
//
//  Created by merim kasenova on 12/3/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var enterNumberTF: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var signUpButton: UIButton!
    
//        override func viewDidLoad() {
//            super.viewDidLoad()
//    
//        }
    
    private func colorTextField(_ textField: UITextField) {
        textField.layer.borderWidth = 1
        textField.layer.borderColor = UIColor.red.cgColor
        textField.placeholder = "Введите номер телефона!"
    }
    
    
    @IBAction func loginButton(_ sender: Any) {
        if enterNumberTF.text!.isEmpty  {
            colorTextField(enterNumberTF)
        } else {
            let TableViewController = storyboard?.instantiateViewController(withIdentifier: "TableViewController") as! TableViewController
            navigationController?.pushViewController(TableViewController, animated: true)
            enterNumberTF.layer.borderWidth = 0
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    }
    




