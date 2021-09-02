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
    var fontSize:Double = 20
    var darkMode: Bool = false
    var gurmukhiOn: Bool = true
    var romanOn: Bool = true
    
    private init () {
    }
}
