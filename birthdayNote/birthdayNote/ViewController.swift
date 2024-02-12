//
//  ViewController.swift
//  birthdayNote
//
//  Created by Dilara Büker on 6.02.2024.
//

import UIKit

class ViewController: UIViewController {
    
    

    @IBOutlet weak var BirhtdayText: UITextField!
    @IBOutlet weak var nameText: UITextField!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var birthdayLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // UserDefaults'tan kullanıcı verilerini al
        let storedName = UserDefaults.standard.object(forKey: "name")
        let storedBirthday = UserDefaults.standard.object(forKey: "birthday")
        
        //Casting - as? vs. as! force casting
        // Any
        
        // Eğer isim değeri varsa, güvenli bir şekilde String türüne dönüştür ve etikete ata
        if let newName = storedName as? String {
            nameLabel.text = "Name: \(newName)"
        }
        
        // Eğer doğum günü değeri varsa, güvenli bir şekilde String türüne dönüştür ve etikete ata
        if let newBirthday = storedBirthday as? String {
            birthdayLabel.text = "Birthday: \(newBirthday)"
        }
       
    }

    @IBAction func saveBtn(_ sender: Any) {
        // Kullanıcının girdiği isim bilgisini UserDefaults'a "name" anahtarıyla kaydet
        UserDefaults.standard.set(nameText.text!, forKey: "name")

        // Kullanıcının girdiği doğum günü bilgisini UserDefaults'a "birthday" anahtarıyla kaydet
        UserDefaults.standard.set(BirhtdayText.text!, forKey: "birthday")
        
        // UserDefaults'taki değişiklikleri eş zamanlı olarak senkronize et
        UserDefaults.standard.synchronize()
        
        // Kullanıcının girdiği isim bilgisini nameLabel etiketine ata
        nameLabel.text = "Name : \(nameText.text!)"

        // Kullanıcının girdiği doğum günü bilgisini birthdayLabel etiketine ata
        birthdayLabel.text = "Birthday : \(BirhtdayText.text!)"
    }
    
    
    @IBAction func deleteBtn(_ sender: Any) {
        
        // UserDefaults'tan "name" anahtarıyla kaydedilen değeri al
        let storedName = UserDefaults.standard.object(forKey: "name")

        // UserDefaults'tan "birthday" anahtarıyla kaydedilen değeri al
        let storedBirthday = UserDefaults.standard.object(forKey: "birthday")

        // Eğer storedName değeri String türünde ise, UserDefaults'tan "name" anahtarını kaldır ve nameLabel etiketini temizle
        if (storedName as? String) != nil {
            UserDefaults.standard.removeObject(forKey: "name")
            nameLabel.text = "Name:"
        }

        // Eğer storedBirthday değeri String türünde ise, UserDefaults'tan "birthday" anahtarını kaldır ve birthdayLabel etiketini temizle
        if (storedBirthday as? String) != nil {
            UserDefaults.standard.removeObject(forKey: "birthday")
            birthdayLabel.text = "Birthday:"
        }
    }
}

