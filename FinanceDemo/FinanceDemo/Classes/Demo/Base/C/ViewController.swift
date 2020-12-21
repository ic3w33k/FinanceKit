//
//  ViewController.swift
//  FinanceDemo
//
//  Created by Hyper on 2020/12/18.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    let textField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "input..."
        textField.font = UIFont.systemFont(ofSize: 22.0, weight: .medium)
        textField.textColor = .black
        textField.layer.cornerRadius = 8.0
        textField.layer.borderColor = UIColor.lightGray.cgColor
        textField.layer.borderWidth = 2.0
        textField.clearButtonMode = .whileEditing
        return textField
    }()
    
    var model: ActionModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = model?.title
        view.backgroundColor = UIColor(red: 0.96, green: 0.96, blue: 0.96, alpha: 1)
        view.addSubview(textField)
        textField.snp.makeConstraints { (make) in
            make.right.equalTo(-30)
            make.left.equalTo(30)
            make.height.equalTo(44)
            make.bottom.equalTo(view.snp_centerYWithinMargins).offset(-100)
        }
    }
}
