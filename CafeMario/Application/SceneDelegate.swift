//
//  SceneDelegate.swift
//  CafeMario
//
//  Created by Andrei Shpartou on 14/03/2024.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {

        guard let windowScene = (scene as? UIWindowScene) else { return }
        let window = UIWindow(windowScene: windowScene)
        // let navigationController = UINavigationController(rootViewController: LoginViewController())
        let navigationController = UINavigationController(rootViewController: CafeTableViewController())
        window.rootViewController = navigationController
        window.makeKeyAndVisible()
        self.window = window
    }
}
