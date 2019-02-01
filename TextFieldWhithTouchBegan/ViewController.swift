//
//  ViewController.swift
//  TextFieldWhithTouchBegan
//
//  Created by Артем on 1/31/19.
//  Copyright © 2019 Артем. All rights reserved.
//

import UIKit

extension UITextField {
}

class ViewController: MyViewController {
    
    @IBOutlet var myView: UIView!
    @IBOutlet weak var myTextField: UITextField!
    @IBOutlet weak var myTextFieldLogin: UITextField!
    @IBOutlet weak var meTextFieldEmail: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.myTextFieldLogin.text = String(UnicodeScalar(65)) + " " + String(UnicodeScalar(90)) + " " + String(UnicodeScalar(97)) + " " + String(UnicodeScalar(122))
        
        self.myTextField.text = genLetter() + " " + genLetter() + " " + genLetter() + " " + genLetter()
        
        
        self.meTextFieldEmail.text = genLetterRussian() + " " + genLetterRussian() + " " + genLetterRussian() + genLetterRussian()
        
        //self.myTextField.delegate = self
        let clickOnLogin = UITapGestureRecognizer(target: self, action: #selector (tapLogin))
        clickOnLogin.numberOfTapsRequired = 2
        
        let clickOnPassword = UITapGestureRecognizer(target: self, action: #selector (tapPassword))
        clickOnPassword.numberOfTapsRequired = 2
        
        let clickOnEmail = UITapGestureRecognizer(target: self, action: #selector (tapEmail))
        clickOnEmail.numberOfTapsRequired = 2
        
        let clickOnView = UITapGestureRecognizer(target: self, action: #selector (tapView))
        clickOnView.numberOfTapsRequired = 2
        
        self.meTextFieldEmail.addGestureRecognizer(clickOnEmail)
        self.myTextFieldLogin.addGestureRecognizer(clickOnLogin)
        self.myTextField.addGestureRecognizer(clickOnPassword)
        self.myView.addGestureRecognizer(clickOnView)
        
    }
    
    @objc func tapLogin() {
        print("tuk tuk login")
        self.myTextFieldLogin.text = "Opa"
    }
    
    @objc func tapPassword() {
        print("tuk tuk password")
        self.myTextField.text = "Opachki"
    }
    
    @objc func tapEmail() {
        print("tuk tuk email")
        //self.meTextFieldEmail.text = "Opasiki"
        self.meTextFieldEmail.text = genLetterRussian() + " " + genLetterRussian() + " " + genLetterRussian() + " " + genLetterRussian()
    }
    
    @objc func tapView() {
        print("tuk tuk view")
        self.meTextFieldEmail.text = ""
        self.myTextField.text = ""
        self.myTextFieldLogin.text = ""
    }
    
    
}

extension ViewController {
    func genLetter() -> String {
        var letter = ""
        if Int.random(in: 0...1) == 0 {
            letter = String(UnicodeScalar(Int.random(in: 65...90))!)
        } else {
            letter = String(UnicodeScalar(Int.random(in: 97...122))!)
        }
        return letter
    }
    
    func genLetterRussian() -> String {
        return String(UnicodeScalar(Int.random(in: 1040...1103))!)
    }
}



extension String {
    func randomLogin() -> String {
        let count = Int.random(in: 6...10)
        let startChar = Unicode.Scalar("a").value
        let endChar = Unicode.Scalar("z").value
        var arr = [String] ()
        
        for alphabet in startChar...endChar {
            if let char = Unicode.Scalar(alphabet) {
                print(char)
                arr.append(String(char))
            }
        }
        var log = ""
        for _ in 1...count {
            let numberChar = Int.random(in: 6...10)
            log += arr[numberChar]
        }
        return log
    }
}
