//
//  BillViewController.swift
//  CafeMario
//
//  Created by Andrei Shpartou on 18/03/2024.
//

import UIKit

class BillViewController: UIViewController {
    weak var coordinator: Coordinator?

    override func viewDidLoad() {
        super.viewDidLoad()

        view = BillView()
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
