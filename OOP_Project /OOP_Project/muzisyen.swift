//
//  muzisyen.swift
//  OOP_Project
//
//  Created by Dilara Büker on 13.02.2024.
//

import Foundation

enum muzisyenType {
    case alternatifPop
    case RnBPop
    case dreamPop
    case metal
}

class muzisyen {
    //property
    var name: String
    var age: Int
    var type: muzisyenType
    
    //Initializer (Constructor)
    init (nameInit:String, ageInit:Int, typeInit: muzisyenType) {
        name = nameInit
        age = ageInit
        type = typeInit
    }
    
    func sing() {
        print("song..")
    }
    
    private func test() {
        print("test")
    }
        
}
