//
//  InputViewController.swift
//  FinanceDemo
//
//  Created by Hyper on 2020/12/18.
//

import UIKit

class InputViewController: ViewController {
    private let label: UILabel = {
        let label = UILabel(frame: .zero)
        label.textColor = .blue
        label.font = .systemFont(ofSize: 22, weight: .medium)
        label.textAlignment = .center
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textField.delegate = self
        textField.addTarget(self, action: #selector(textFieldDidChange(textField:)), for: .editingChanged)
    }
}

extension InputViewController: UITextFieldDelegate {
    @objc func textFieldDidChange(textField: UITextField) -> Void {
        label.text = textField.text
    }
}
