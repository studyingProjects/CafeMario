//
//  LabelSize.swift
//  CafeMario
//
//  Created by Andrei Shpartou on 14/03/2024.
//

import UIKit

enum LabelSize {
    enum Small {
        static let fontSize: CGFloat = 14
        static let fontWeight: UIFont.Weight = .regular
    }

    enum Medium {
        static let fontSize: CGFloat = 22
        static let fontWeight: UIFont.Weight = .semibold
    }

    enum Large {
        static let fontSize: CGFloat = 56
        static let fontWeight: UIFont.Weight = .bold
    }
}
