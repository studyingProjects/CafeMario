//
//  BillView.swift
//  CafeMario
//
//  Created by Andrei Shpartou on 18/03/2024.
//

import UIKit

protocol BillViewControllerDelegate: AnyObject {
    func updateView(with data: TableModelProtocol)
}

class BillView: UIView {
    private lazy var fullNameLabel: UILabel = getFullNameLabel()
    private lazy var countOfGuestsLabel: UILabel = getCountOfGuestsLabel()
    private lazy var numberOfTableLabel: UILabel = getNumberOfTableLabel()
    private lazy var billButton: UIButton = getBillButton()

    override init(frame: CGRect) {
        super.init(frame: frame)

        setupViews()
        setupConstraints()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setupViews() {
        backgroundColor = .white

        addSubview(fullNameLabel)
        addSubview(countOfGuestsLabel)
        addSubview(numberOfTableLabel)
        addSubview(billButton)
    }
}

// MARK: - Subviews creation
private extension BillView {
    private func getFullNameLabel() -> UILabel {
        let label = UILabel()
        label.text = "Full Name: "
        label.textColor = .customRed
        label.font = .systemFont(ofSize: LabelSize.Medium.fontSize, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }

    private func getCountOfGuestsLabel() -> UILabel {
        let label = UILabel()
        label.text = "Count of guests: "
        label.textColor = .customRed
        label.font = .systemFont(ofSize: LabelSize.Medium.fontSize, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }

    private func getNumberOfTableLabel() -> UILabel {
        let label = UILabel()
        label.text = "Number of table: "
        label.textColor = .customRed
        label.font = .systemFont(ofSize: LabelSize.Medium.fontSize, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }

    private func getBillButton() -> UIButton {
        let button = UIButton()
        button.setTitle("Total", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.setTitleColor(.lightGray, for: .highlighted)
        button.backgroundColor = .customGreen
        button.layer.cornerRadius = CommonSize.cornerRadius
        button.translatesAutoresizingMaskIntoConstraints = false

        return button
    }
}
// MARK: - Delegation
extension BillView: BillViewControllerDelegate {
    func updateView(with data: TableModelProtocol) {
        fullNameLabel.text = "Full Name: \(data.fullName)"
        countOfGuestsLabel.text = "Count of guests: \(data.countOfGuests)"
        numberOfTableLabel.text = "Number of table: \(data.tableNumber)"
    }
}

// MARK: - Constraints
private extension BillView {
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            fullNameLabel.topAnchor.constraint(
                equalTo: safeAreaLayoutGuide.topAnchor,
                constant: CommonSize.Padding.large
            ),
            fullNameLabel.leadingAnchor.constraint(
                equalTo: safeAreaLayoutGuide.leadingAnchor,
                constant: CommonSize.Padding.medium
            ),
            fullNameLabel.trailingAnchor.constraint(
                equalTo: safeAreaLayoutGuide.trailingAnchor,
                constant: CommonSize.Padding.medium
            ),

            countOfGuestsLabel.topAnchor.constraint(
                equalTo: fullNameLabel.bottomAnchor,
                constant: CommonSize.Padding.large
            ),
            countOfGuestsLabel.leadingAnchor.constraint(equalTo: fullNameLabel.leadingAnchor),
            countOfGuestsLabel.trailingAnchor.constraint(equalTo: fullNameLabel.trailingAnchor),

            numberOfTableLabel.topAnchor.constraint(
                equalTo: countOfGuestsLabel.bottomAnchor,
                constant: CommonSize.Padding.large
            ),
            numberOfTableLabel.leadingAnchor.constraint(equalTo: countOfGuestsLabel.leadingAnchor),
            numberOfTableLabel.trailingAnchor.constraint(equalTo: countOfGuestsLabel.trailingAnchor),

            billButton.leadingAnchor.constraint(
                equalTo: safeAreaLayoutGuide.leadingAnchor,
                constant: CommonSize.Padding.large * 2
            ),
            billButton.trailingAnchor.constraint(
                equalTo: safeAreaLayoutGuide.trailingAnchor,
                constant: -CommonSize.Padding.large * 2
            ),
            billButton.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -CommonSize.Padding.large),
            billButton.heightAnchor.constraint(equalToConstant: ButtonSize.Medium.height)
        ])
    }
}
