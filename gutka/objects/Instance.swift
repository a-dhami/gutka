//
//  Instance.swift
//  gutka
//
//  Created by Akashdeep Dhami on 2021-09-01.
//

import Foundation
import SwiftUI

class Instance {
    
    static let sharedInstance = Instance()
    
    //global App settings
    var fontSize:Double = 20
    
    //languageOptions
    var gurmukhiOn: Bool = true
    var romanOn: Bool = true
    var hindiOn: Bool = false
    
    //languageColours
    var gurmukhiCol: Color = .black
    var romanCol: Color = .blue
    var hindiCol: Color = .red
    
    
    
    private init () {
    }
}
