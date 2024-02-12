//
//  ViewController.swift
//  hesapMak
//
//  Created by Dilara Büker on 5.02.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstText: UITextField!
    @IBOutlet weak var secondText: UITextField!
    @IBOutlet weak var sonuc: UILabel!
    
    var result = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func sum(_ sender: Any) {
        if let firstNum = Double(firstText.text!){
            if let secNum = Double(secondText.text!) {
                result = firstNum + secNum
                sonuc.text = String(result)
            }
        }
    }
    
    @IBAction func sub(_ sender: Any) {
        if let firstNum = Double(firstText.text!){
            if let secNum = Double(secondText.text!){
                result = firstNum - secNum
                sonuc.text = String(result)
            }
        }
    }
    
    
    @IBAction func mult(_ sender: Any) {
        if let firstNum = Double(firstText.text!) {
            if let secNum = Double(secondText.text!) {
                result = firstNum * secNum
                sonuc.text = String(result)
            }
        }
    }
    
    
    @IBAction func div(_ sender: Any) {
        if let firstNum = Double(firstText.text!) {
            if let secNum = Double(secondText.text!) {
                result = firstNum / secNum
                sonuc.text = String(result)
            }
        }
    }
    
}

