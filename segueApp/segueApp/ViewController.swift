//
//  ViewController.swift
//  segueApp
//
//  Created by Dilara Büker on 7.02.2024.
//

import UIKit

class ViewController: UIViewController {
    
    var userName = " " // Kullanıcı adını tutacak değişken

    @IBOutlet weak var FirstLabel: UILabel!
    @IBOutlet weak var nameText: UITextField!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
    }

    @IBAction func girisBtn(_ sender: Any) {
        userName = nameText.text! // Text alanından kullanıcı adını al
        performSegue(withIdentifier: "toSecondVC", sender: nil) // Segue'yi başlat
        
        //giris butonuna tıklandığında ikinci ekrana geçecek (manuel yaptık)
        /*bunu direkt viewController ekranında butonu diğer ekrana bağlayıp navigatorController
        (back butonu için) yapabilirdik. Ama Koşullu durumlarda manuel ayarlamak daha doğru olur.
         Bu sefer diğer ekrana butonu değil VievControllerı (sarı kısım) bağladık.
        */
    }
    
// prepare () fonksiyonu, segue'nin gerçekleşmesinden önce ihtiyaç duyulan hazırlıkları yapmak için kullanılır.
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Eğer geçişin kimliği "toSecondVC" ise devam et
        if segue.identifier == "toSecondVC" {
            // Hedef görünüm denetleyicisini (ViewControllerSecond) al
            let destinationVC = segue.destination as! ViewControllerSecond
            // Hedef görünüm denetleyicisinin ad özelliğine kullanıcı adını ata
            destinationVC.Name = userName
        }
    }    
}


