//
//  superMuzisyen.swift
//  OOP_Project
//
//  Created by Dilara Büker on 13.02.2024.
//

import Foundation

class supermuzisyen: muzisyen {
    func sing2() {
        print ("song2...")
    }
    
    override func sing() {
        super.sing()
        print("exit")
    }
}
