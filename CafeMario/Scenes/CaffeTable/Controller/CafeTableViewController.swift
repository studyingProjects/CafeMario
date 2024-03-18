//
//  CafeTableVIewControllerViewController.swift
//  CafeMario
//
//  Created by Andrei Shpartou on 17/03/2024.
//

import UIKit

protocol CafeTableViewDelegate: AnyObject {
    func getBill()
    func setTableOption(_ option: TableOptions, with value: Bool)
}

class CafeTableViewController: UIViewController {
    private lazy var tableModel = TableModel()

    override func viewDidLoad() {
        super.viewDidLoad()

        let cafeTableView = CafeTableView()
        cafeTableView.delegate = self
        view = cafeTableView

        title = "Cafe Mario"
    }
}

extension CafeTableViewController: CafeTableViewDelegate {
    func setTableOption(_ option: TableOptions, with value: Bool) {
        tableModel.setTableOption(option, with: value)
    }

    func getBill() {
    }
}
