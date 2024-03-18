//
//  BillView.swift
//  CafeMario
//
//  Created by Andrei Shpartou on 18/03/2024.
//

import UIKit

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
// MARK: - Constraints
private extension BillView {
    private func setupConstraints() {
    }
}
