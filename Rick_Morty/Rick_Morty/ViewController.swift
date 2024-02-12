//
//  ViewController.swift
//  Rick_Morty
//
//  Created by Dilara Büker on 5.02.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    

    @IBAction func buton(_ sender: Any) {
        imageView.image = UIImage(named: "morty")
    }
    
}

