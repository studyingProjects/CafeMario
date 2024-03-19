//
//  LoginViewController.swift
//  CafeMario
//
//  Created by Andrei Shpartou on 14/03/2024.
//

import UIKit

protocol LoginViewDelegate: AnyObject {
    func passToCaffeTable(_ sender: UIButton)
}

class LoginViewController: UIViewController {
    weak var coordinator: Coordinator?

    override func viewDidLoad() {
        super.viewDidLoad()

        let loginView = LoginView()
        loginView.delegate = self

        view = loginView
    }
}

// MARK: - Delegation
extension LoginViewController: LoginViewDelegate {
    func passToCaffeTable(_ sender: UIButton) {
        coordinator?.openTableReservetionScene()
    }
}
