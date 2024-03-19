//
//  Coordinator.swift
//  CafeMario
//
//  Created by Andrei Shpartou on 19/03/2024.
//

import UIKit

protocol Coordinator: AnyObject {
    var navigationController: UINavigationController { get set }

    func start()
    func openTableReservetionScene()
    func openBillScene()
}

class MainCoordinator: Coordinator {
    var navigationController: UINavigationController

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

    func start() {
        let viewController = LoginViewController()
        viewController.coordinator = self
        navigationController.pushViewController(viewController, animated: true)
    }

    func openTableReservetionScene() {
        let viewController = CafeTableViewController()
        viewController.coordinator = self
        navigationController.pushViewController(viewController, animated: true)
    }

    func openBillScene() {
        let viewController = BillViewController()
        viewController.coordinator = self
        navigationController.pushViewController(viewController, animated: true)
    }
}
