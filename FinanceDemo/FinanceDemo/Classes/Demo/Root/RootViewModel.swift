//
//  RootViewModel.swift
//  FinanceDemo
//
//  Created by Hyper on 2020/12/18.
//

import Foundation

class RootViewModel {
    
    private var titles = [String]()
    private var listData = [[ActionModel]]()
    
    init() {
        addInputDemo()
        addRegexDemo()
    }
    
    private func addInputDemo() -> Void {
        var models = [ActionModel]()
        models.append(ActionModel(title: "保留3位小数，最长8个字符", remain: 3, fullLength: 8))
        models.append(ActionModel(title: "保留0位小数，最长6个字符", remain: 0, fullLength: 6))
        models.append(ActionModel(title: "保留-2位小数，最长6个字符", remain: -2, fullLength: 6))
        listData.append(models)
        
        titles.append("Input")
    }
    
    private func addRegexDemo() -> Void {
        let regex = "^(0|-?[1-9][0-9]*)(\\.[0-9]{1,2})?$"
        var models = [ActionModel]()
        models.append(ActionModel(title: "最多两位小数", regex: regex))
        listData.append(models)
        
        titles.append("RegEx")
    }
    
    func numberOfSections() -> Int {
        return listData.count
    }
    
    func titleForHeader(section: Int) -> String {
        return titles[section]
    }
    
    func numberOfRows(section: Int) -> Int {
        return listData[section].count
    }
    
    func actionModel(section: Int, row: Int) -> ActionModel {
        listData[section][row]
    }
}
