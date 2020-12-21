//
//  RootViewController.swift
//  FinanceDemo
//
//  Created by Hyper on 2020/12/17.
//

import UIKit

class RootViewController: UITableViewController {
    
    let viewModel = RootViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let title = Bundle.main.infoDictionary?["CFBundleName"] as? String {
            navigationItem.title = title
        }
        view.backgroundColor = .white
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
}

extension RootViewController {
    override func numberOfSections(in tableView: UITableView) -> Int {
        viewModel.numberOfSections()
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        viewModel.titleForHeader(section: section)
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        viewModel.numberOfRows(section: section)
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.accessoryType = .disclosureIndicator
        cell.textLabel?.text = viewModel.actionModel(section: indexPath.section, row: indexPath.row).title
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let model = viewModel.actionModel(section: indexPath.section, row: indexPath.row)
        var controller: ViewController
        if 1 == model.type {
            controller = RegExViewController()
        } else {
            controller = InputViewController()
        }
        controller.model = model
        navigationController?.pushViewController(controller, animated: true)
    }
}
