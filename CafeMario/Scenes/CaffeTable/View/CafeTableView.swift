//
//  CafeTableView.swift
//  CafeMario
//
//  Created by Andrei Shpartou on 17/03/2024.
//

import UIKit

class CafeTableView: UIView {
    // Header
    private lazy var fullNameLabel: UILabel = getFullNameLabel()
    private lazy var fullNameTextField: UITextField = getFullNameTextField()
    private lazy var countOfGuestsLabel: UILabel = getCountOfGuestsLabel()
    private lazy var countOfGuestsTextField: UITextField = getCountOfGuestsTextField()
    private lazy var numberOfTableLabel: UILabel = getNumberOfTableLabel()
    private lazy var numberOfTableTextField: UITextField = getNumberOfTableTextField()
    // Bottom switchers
    private lazy var isTableBookedLabel: UILabel = getIsTableBookedLabel()
    private lazy var isTableBookedSwitch: UISwitch = getIsTableBookedSwitch()
    private lazy var isPrepaidLabel: UILabel = getIsPrepaidLabel()
    private lazy var isPrepaidSwitch: UISwitch = getIsPrepaidSwitch()
    private lazy var isVIP: UILabel = getIsVIPLabel()
    private lazy var isVIPSwitch: UISwitch = getIsVIPSwitch()
    // Bottom button
    private lazy var billButton: UIButton = getBillButton()

    override init(frame: CGRect) {
        super.init(frame: frame)

        setupViews()
        setupConstraints()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    // MARK: - Setup views
    private func setupViews() {
    }
    // MARK: - Get header views
    private func getFullNameLabel() -> UILabel { UILabel() }
    private func getFullNameTextField() -> UITextField { UITextField() }
    private func getCountOfGuestsLabel() -> UILabel { UILabel() }
    private func getCountOfGuestsTextField() -> UITextField { UITextField() }
    private func getNumberOfTableLabel() -> UILabel { UILabel() }
    private func getNumberOfTableTextField() -> UITextField { UITextField() }
    // MARK: - Get bottom views
    private func getIsTableBookedLabel() -> UILabel { UILabel() }
    private func getIsTableBookedSwitch() -> UISwitch { UISwitch() }
    private func getIsPrepaidLabel() -> UILabel { UILabel() }
    private func getIsPrepaidSwitch() -> UISwitch { UISwitch() }
    private func getIsVIPLabel() -> UILabel { UILabel() }
    private func getIsVIPSwitch() -> UISwitch { UISwitch() }
    private func getBillButton() -> UIButton { UIButton() }
}

private extension CafeTableView {
    private func setupConstraints() {
        setupHeaderConstraints()
        setupBottomConstraints()
    }
    // MARK: - Header constraints
    private func setupHeaderConstraints() {
    }
    // MARK: - Bottom constraints
    private func setupBottomConstraints() {
    }
}
