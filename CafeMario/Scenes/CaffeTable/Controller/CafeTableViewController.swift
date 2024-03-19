//
//  CafeTableVIewControllerViewController.swift
//  CafeMario
//
//  Created by Andrei Shpartou on 17/03/2024.
//

import UIKit

protocol CafeTableViewDelegate: AnyObject {
    func setTableOption(_ option: TableOptions, with value: Bool)
    func updateFullName(with value: String)
    func updateCountOfGuests(with value: Int)
    func updateNumberOfTable(with value: Int)
    func getBill()
}

class CafeTableViewController: UIViewController {
    weak var coordinator: Coordinator?
    private lazy var tableModel = TableModel()

    override func viewDidLoad() {
        super.viewDidLoad()

        let cafeTableView = CafeTableView()
        cafeTableView.delegate = self
        view = cafeTableView

        title = "Cafe Mario"
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
}

extension CafeTableViewController: CafeTableViewDelegate {

    func setTableOption(_ option: TableOptions, with value: Bool) {
        tableModel.setTableOption(option, with: value)
    }

    func updateFullName(with value: String) {
        tableModel.fullName = value
    }

    func updateCountOfGuests(with value: Int) {
        tableModel.countOfGuests = value
    }

    func updateNumberOfTable(with value: Int) {
        tableModel.tableNumber = value
    }

    func getBill() {
        let alert = UIAlertController(title: "Make a bill?", message: nil, preferredStyle: .alert)
        let actionCancel = UIAlertAction(title: "Cancel", style: .cancel)
        let actionOK = UIAlertAction(title: "Bill", style: .default) { _ in
            self.coordinator?.openBillScene(with: self.tableModel)
        }
        alert.addAction(actionCancel)
        alert.addAction(actionOK)
        present(alert, animated: true)
    }
}
