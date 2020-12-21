//
//  ActionModel.swift
//  FinanceDemo
//
//  Created by Hyper on 2020/12/17.
//

import Foundation

class ActionModel {
    var type: Int = 0
    var title: String = ""
    var regex: String = ""
    var remain: Int = 0
    var fullLength: Int = 0
    
    init(title: String, regex: String) {
        self.type = 1
        self.title = title
        self.regex = regex
    }
    
    init(title: String, remain: Int, fullLength: Int) {
        self.type = 2;
        self.title = title
        self.remain = remain
        self.fullLength = fullLength
    }
}
