//
//  UIViewController+Preview.swift
//  CafeMario
//
//  Created by Andrei Shpartou on 14/03/2024.
//

import SwiftUI

extension UIViewController {
    struct Preview: UIViewControllerRepresentable {
        let viewController: UIViewController

        func makeUIViewController(context: Context) -> some UIViewController {
            viewController
        }

        func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) { }
    }

    func preview() -> some View {
        Preview(viewController: self).edgesIgnoringSafeArea(.all)
    }
}
