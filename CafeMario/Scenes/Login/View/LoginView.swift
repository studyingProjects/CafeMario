//
//  LoginView.swift
//  CafeMario
//
//  Created by Andrei Shpartou on 14/03/2024.
//

import UIKit

class LoginView: UIView {
    private lazy var titleImageView: UIImageView = getTitleImageView()
    private lazy var signInLabel: UILabel = getSignInLabel()

    override init(frame: CGRect) {
        super.init(frame: frame)

        setupViews()
        setupConstraints()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    // MARK: - Setup Views
    private func setupViews() {
        backgroundColor = .white

        addSubview(titleImageView)
        addSubview(signInLabel)
    }

    private func getTitleImageView() -> UIImageView {
        let imageView = UIImageView(image: I.titleImage.image)
        imageView.contentMode = .scaleAspectFill
        imageView.layer.cornerRadius = CommonSize.Large.height / 2
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false

        return imageView
    }

    private func getSignInLabel() -> UILabel {
        let label = UILabel()
        label.font = .systemFont(ofSize: LabelSize.Medium.fontSize, weight: LabelSize.Large.fontWeight)
        label.text = "Sign in"
        label.translatesAutoresizingMaskIntoConstraints = false

        return label
    }
}

// MARK: - Constraints
private extension LoginView {
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            titleImageView.topAnchor.constraint(
                equalTo: safeAreaLayoutGuide.topAnchor,
                constant: CommonSize.Padding.small
            ),
            titleImageView.leadingAnchor.constraint(
                equalTo: safeAreaLayoutGuide.leadingAnchor,
                constant: CommonSize.Padding.large
            ),
            titleImageView.trailingAnchor.constraint(
                equalTo: safeAreaLayoutGuide.trailingAnchor,
                constant: -CommonSize.Padding.large
            ),
            titleImageView.heightAnchor.constraint(equalToConstant: CommonSize.Large.height),

            signInLabel.topAnchor.constraint(
                equalTo: titleImageView.bottomAnchor,
                constant: CommonSize.Padding.medium
            ),
            signInLabel.leadingAnchor.constraint(equalTo: titleImageView.leadingAnchor),
            signInLabel.trailingAnchor.constraint(equalTo: titleImageView.trailingAnchor)
        ])
    }
}
