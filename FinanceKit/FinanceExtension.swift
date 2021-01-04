//
//  FinanceExtension.swift
//  FinanceDemo
//
//  Created by Hyper on 2020/12/21.
//

import Foundation

extension Float {
    var prettyNumber: Float {
        
        var decimal = NSDecimalNumber(value: self)
        if NSDecimalNumber.notANumber.isEqual(decimal) {
            return 0.00
        }
        
        let mode = decimal.compare(NSDecimalNumber.zero) == .orderedAscending ? NSDecimalNumber.RoundingMode.up : .down
        let handler = NSDecimalNumberHandler(roundingMode: mode,
                                             scale: 2,
                                             raiseOnExactness: false,
                                             raiseOnOverflow: false,
                                             raiseOnUnderflow: false,
                                             raiseOnDivideByZero: false)
        decimal = decimal.rounding(accordingToBehavior: handler)
        return decimal.floatValue
    }
}

extension Double {
    var prettyNumber: Double {
        
        var decimal = NSDecimalNumber(value: self)
        if NSDecimalNumber.notANumber.isEqual(decimal) {
            return 0.00
        }
        
        let mode = decimal.compare(NSDecimalNumber.zero) == .orderedAscending ? NSDecimalNumber.RoundingMode.up : .down
        let handler = NSDecimalNumberHandler(roundingMode: mode,
                                             scale: 2,
                                             raiseOnExactness: false,
                                             raiseOnOverflow: false,
                                             raiseOnUnderflow: false,
                                             raiseOnDivideByZero: false)
        decimal = decimal.rounding(accordingToBehavior: handler)
        return decimal.doubleValue
    }
}

extension String {
    var prettyNumber: String {
        
        var decimal = NSDecimalNumber(string: self)
        if NSDecimalNumber.notANumber.isEqual(decimal) {
            return "0.00"
        }
        
        let mode = decimal.compare(NSDecimalNumber.zero) == .orderedAscending ? NSDecimalNumber.RoundingMode.up : .down
        let handler = NSDecimalNumberHandler(roundingMode: mode,
                                             scale: 2,
                                             raiseOnExactness: false,
                                             raiseOnOverflow: false,
                                             raiseOnUnderflow: false,
                                             raiseOnDivideByZero: false)
        decimal = decimal.rounding(accordingToBehavior: handler)
        return decimal.stringValue
    }
}
