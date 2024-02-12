//
//  ViewController.swift
//  timerApp
//
//  Created by Dilara Büker on 8.02.2024.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var UserNameText: UITextField!
    @IBOutlet weak var PasswordText: UITextField!
    @IBOutlet weak var PasswordAgainText: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func GirisBtn(_ sender: Any) {
        
        /*
         //butona basılınca hata mesajı girilsin
         let alert = UIAlertController(title: "Error", message: "Username not found", preferredStyle:UIAlertController.Style.alert) //UIAlertcontrollera gelince (stil için) entera bas sonuna nokta koy alert o zaman geliyo.
         
         let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: { (UIAlertAction) in
         //butona tıklanınca olacak aksiyonlar burada yazılıyor.
         print ("Button clicked")
         })
         alert.addAction(okButton)
         self.present(alert, animated: true)//view controllera referans veriyo.
         */
        
        
        // Kullanıcı adı alanı boş ise
        if UserNameText.text == "" {
            makeAlert(titleInput: "Error", messageInput: "Username not found!")
        }
        // Şifre alanı boş ise
        else if PasswordText.text == "" {
            makeAlert(titleInput: "Error", messageInput: "Password not found!")
        }
        // Şifreler uyuşmuyorsa
        else if PasswordAgainText.text != PasswordText.text {
            makeAlert(titleInput: "Error", messageInput: "Passwords do not match")
        }
        // Hiçbiri geçerli değilse
        else {
            makeAlert(titleInput: "Success", messageInput: "User OK")
        }
        
        // Alert göstermek için fonksiyon
        func makeAlert(titleInput: String, messageInput:String) {
            let alert = UIAlertController(title: titleInput, message: messageInput, preferredStyle: UIAlertController.Style.alert)
            let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
            alert.addAction(okButton)
            self.present(alert, animated: true, completion: nil)
        }
        
        
        
    }
}
