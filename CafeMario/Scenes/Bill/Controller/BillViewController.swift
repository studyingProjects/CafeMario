//
//  BillViewController.swift
//  CafeMario
//
//  Created by Andrei Shpartou on 18/03/2024.
//

import UIKit

class BillViewController: UIViewController {
    weak var coordinator: Coordinator?
    var tableModel: TableModelProtocol?
    var delegate: BillViewControllerDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()

        let billView = BillView()
        delegate = billView
        if let unwrappedModel = tableModel {
            delegate?.updateView(with: unwrappedModel)
        }

        view = billView
    }
}

import SwiftUI
struct ViewControllerProvider: PreviewProvider {
    static var previews: some View {
        Group {
            // change to your vc
            BillViewController().preview()
        }
    }
}
