//
//  TableModel.swift
//  CafeMario
//
//  Created by Andrei Shpartou on 17/03/2024.
//

import Foundation

protocol TableModelProtocol {
    var fullName: String { get set }
    var countOfGuests: Int { get set }
    var tableNumber: Int { get set }
    var isTableBooked: Bool { get set }
    var isPrepaid: Bool { get set }
    var isVIP: Bool { get set }

    mutating func setTableOption(_ option: TableOptions, with value: Bool)
}

@objc
enum TableOptions: Int, CaseIterable {
    case isTableBooked
    case isPrepaid
    case isVIP
}

struct TableModel: TableModelProtocol {
    var fullName: String = ""
    var countOfGuests: Int = 0
    var tableNumber: Int = 0
    var isTableBooked = false
    var isPrepaid = false
    var isVIP = false

    mutating func setTableOption(_ option: TableOptions, with value: Bool) {
        switch option {
        case .isTableBooked:
            isTableBooked = value
        case .isPrepaid:
            isPrepaid = value
        case .isVIP:
            isVIP = value
        }
    }
}
