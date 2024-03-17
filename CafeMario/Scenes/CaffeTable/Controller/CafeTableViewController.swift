//
//  CafeTableVIewControllerViewController.swift
//  CafeMario
//
//  Created by Andrei Shpartou on 17/03/2024.
//

import UIKit

class CafeTableViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()

        view = CafeTableView()
        title = "Cafe Mario"
    }
}

import SwiftUI
struct ViewControllerProvider: PreviewProvider {
    static var previews: some View {
        Group {
            // change to your vc
            CafeTableViewController().preview()
        }
    }
}
