//
//  ViewControllerSecond.swift
//  segueApp
//
//  Created by Dilara Büker on 7.02.2024.
//

import UIKit

class ViewControllerSecond: UIViewController {
    var  Name = " " // Kullanıcı adını tutacak değişken

    @IBOutlet weak var secondLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = Name // İkinci ekranın isim label'ına kullanıcı adını ata
    }
}
