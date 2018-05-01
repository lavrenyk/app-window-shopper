//
//  Wage.swift
//  window-shopper
//
//  Created by MoHapX on 01.05.2018.
//  Copyright © 2018 R'systems ltd. All rights reserved.
//

import Foundation

class Wage {
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int {
        return Int(ceil(price / wage))
    }
}
