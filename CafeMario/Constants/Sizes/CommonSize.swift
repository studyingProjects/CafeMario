//
//  CommonSize.swift
//  CafeMario
//
//  Created by Andrei Shpartou on 14/03/2024.
//

import CoreGraphics

enum CommonSize {
    enum Padding {
        static let small: CGFloat = 8
        static let medium: CGFloat = 16
        static let large: CGFloat = 32
    }

    enum Small {
        static let width: CGFloat = 50
        static let height: CGFloat = 50
    }

    enum Medium {
        static let width: CGFloat = 150
        static let height: CGFloat = 150
    }

    enum Large {
        static let width: CGFloat = 250
        static let height: CGFloat = 300
    }

    static let cornerRadius: CGFloat = 20
}
