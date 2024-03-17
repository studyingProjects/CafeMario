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
    // MARK: - LifeCycle
    override func layoutSubviews() {
        super.layoutSubviews()

        layoutTextFieldBorder(to: fullNameTextField)
        layoutTextFieldBorder(to: countOfGuestsTextField)
        layoutTextFieldBorder(to: numberOfTableTextField)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    // MARK: - Setup views
    private func setupViews() {
        backgroundColor = .white

        addSubview(fullNameLabel)
        addSubview(fullNameTextField)
        addSubview(countOfGuestsLabel)
        addSubview(countOfGuestsTextField)
        addSubview(numberOfTableLabel)
        addSubview(numberOfTableTextField)
    }
}
// MARK: - Creation subviews extension
private extension CafeTableView {
    // Header views
    private func getFullNameLabel() -> UILabel {
        let button = UILabel()
        button.text = "Full Name"
        button.textColor = .customRed
        button.font = .systemFont(ofSize: LabelSize.Small.fontSize, weight: .semibold)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }

    private func getFullNameTextField() -> UITextField {
        let textField = UITextField()
        textField.placeholder = "Fill in the full name"
        textField.font = .systemFont(ofSize: LabelSize.Small.fontSize, weight: .semibold)
        textField.borderStyle = .none
        textField.autocapitalizationType = .words
        textField.keyboardAppearance = .dark
        textField.returnKeyType = .done
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }

    private func getCountOfGuestsLabel() -> UILabel {
        let button = UILabel()
        button.text = "Count of guests"
        button.textColor = .customRed
        button.font = .systemFont(ofSize: LabelSize.Small.fontSize, weight: .bold)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }

    private func getCountOfGuestsTextField() -> UITextField {
        let textField = UITextField()
        textField.placeholder = "Fill in the count of guests"
        textField.font = .systemFont(ofSize: LabelSize.Small.fontSize, weight: .bold)
        textField.borderStyle = .none
        textField.autocapitalizationType = .words
        textField.keyboardAppearance = .dark
        textField.returnKeyType = .done
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }

    private func getNumberOfTableLabel() -> UILabel {
        let button = UILabel()
        button.text = "Number of table"
        button.textColor = .customRed
        button.font = .systemFont(ofSize: LabelSize.Small.fontSize, weight: .bold)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }

    private func getNumberOfTableTextField() -> UITextField {
        let textField = UITextField()
        textField.placeholder = "Fill in the table number"
        textField.font = .systemFont(ofSize: LabelSize.Small.fontSize, weight: .bold)
        textField.borderStyle = .none
        textField.autocapitalizationType = .words
        textField.keyboardAppearance = .dark
        textField.returnKeyType = .done
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }
    // MARK: - Get bottom views
    private func getIsTableBookedLabel() -> UILabel { UILabel() }
    private func getIsTableBookedSwitch() -> UISwitch { UISwitch() }
    private func getIsPrepaidLabel() -> UILabel { UILabel() }
    private func getIsPrepaidSwitch() -> UISwitch { UISwitch() }
    private func getIsVIPLabel() -> UILabel { UILabel() }
    private func getIsVIPSwitch() -> UISwitch { UISwitch() }
    private func getBillButton() -> UIButton { UIButton() }
}
// MARK: - Additional methods
private extension CafeTableView {
    func layoutTextFieldBorder(to textField: UITextField) {
        let border = CALayer()
        border.frame = CGRect(x: 0, y: textField.frame.height - 1, width: textField.frame.width, height: 1)
        border.borderColor = UIColor.gray.cgColor
        border.borderWidth = 1
        textField.layer.addSublayer(border)
        textField.layer.masksToBounds = true
    }
}
// MARK: - Constraints
private extension CafeTableView {
    private func setupConstraints() {
        setupHeaderConstraints()
        setupBottomConstraints()
    }
    // MARK: - Header constraints
    private func setupHeaderConstraints() {
        NSLayoutConstraint.activate([
            // Full Name
            fullNameLabel.topAnchor.constraint(
                equalTo: safeAreaLayoutGuide.topAnchor,
                constant: CommonSize.Padding.medium
            ),
            fullNameLabel.leadingAnchor.constraint(
                equalTo: safeAreaLayoutGuide.leadingAnchor,
                constant: CommonSize.Padding.large
            ),
            fullNameLabel.trailingAnchor.constraint(
                equalTo: safeAreaLayoutGuide.trailingAnchor,
                constant: -CommonSize.Padding.large
            ),
            fullNameTextField.topAnchor.constraint(equalTo: fullNameLabel.bottomAnchor),
            fullNameTextField.leadingAnchor.constraint(equalTo: fullNameLabel.leadingAnchor),
            fullNameTextField.trailingAnchor.constraint(equalTo: fullNameLabel.trailingAnchor),
            fullNameTextField.heightAnchor.constraint(equalToConstant: CommonSize.Small.height),
            // Count of guests
            countOfGuestsLabel.topAnchor.constraint(
                equalTo: fullNameTextField.bottomAnchor,
                constant: CommonSize.Padding.medium
            ),
            countOfGuestsLabel.leadingAnchor.constraint(equalTo: fullNameTextField.leadingAnchor),
            countOfGuestsLabel.trailingAnchor.constraint(equalTo: fullNameTextField.trailingAnchor),
            countOfGuestsTextField.topAnchor.constraint(equalTo: countOfGuestsLabel.bottomAnchor),
            countOfGuestsTextField.leadingAnchor.constraint(equalTo: countOfGuestsLabel.leadingAnchor),
            countOfGuestsTextField.trailingAnchor.constraint(equalTo: countOfGuestsLabel.trailingAnchor),
            countOfGuestsTextField.heightAnchor.constraint(equalToConstant: CommonSize.Small.height),
            // Number of the table
            numberOfTableLabel.topAnchor.constraint(
                equalTo: countOfGuestsTextField.bottomAnchor,
                constant: CommonSize.Padding.medium
            ),
            numberOfTableLabel.leadingAnchor.constraint(equalTo: countOfGuestsTextField.leadingAnchor),
            numberOfTableLabel.trailingAnchor.constraint(equalTo: countOfGuestsTextField.trailingAnchor),
            numberOfTableTextField.topAnchor.constraint(equalTo: numberOfTableLabel.bottomAnchor),
            numberOfTableTextField.leadingAnchor.constraint(equalTo: numberOfTableLabel.leadingAnchor),
            numberOfTableTextField.trailingAnchor.constraint(equalTo: numberOfTableLabel.trailingAnchor),
            numberOfTableTextField.heightAnchor.constraint(equalToConstant: CommonSize.Small.height)
                
        ])
    }
    // MARK: - Bottom constraints
    private func setupBottomConstraints() {
    }
}
