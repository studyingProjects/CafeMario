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
    private lazy var emailLabel: UILabel = getEmailLabel()
    private lazy var emailTextField: UITextField = getEmailTextField()
    private lazy var passwordLabel: UILabel = getPasswordLabel()
    private lazy var passwordTextField: UITextField = getPasswordTextField()

    override init(frame: CGRect) {
        super.init(frame: frame)

        setupViews()
        setupConstraints()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    // MARK: - LifeCycle
    override func layoutSubviews() {
        super.layoutSubviews()

        layoutTextFieldBorder(emailTextField)
        // layoutTextFieldBorder(passwordTextField)
    }

    // MARK: - Setup Views
    private func setupViews() {
        backgroundColor = .white

        addSubview(titleImageView)
        addSubview(signInLabel)
        addSubview(emailLabel)
        addSubview(emailTextField)
        // addSubview(passwordLabel)
        // addSubview(passwordTextField)
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
        label.text = "Sign in"
        label.font = .systemFont(ofSize: LabelSize.Medium.fontSize, weight: LabelSize.Large.fontWeight)
        label.translatesAutoresizingMaskIntoConstraints = false

        return label
    }
    // MARK: - Email
    private func getEmailLabel() -> UILabel {
        let label = UILabel()
        label.text = "Email"
        label.font = .systemFont(ofSize: LabelSize.Small.fontSize, weight: .bold)
        label.textColor = .customRed
        label.translatesAutoresizingMaskIntoConstraints = false

        return label
    }

    private func getEmailTextField() -> UITextField {
        let textField = UITextField()
        textField.text = "example@email.com"
        textField.font = .systemFont(ofSize: LabelSize.Small.fontSize, weight: .bold)
        textField.autocapitalizationType = .none
        textField.autocorrectionType = .no
        textField.keyboardType = .emailAddress
        textField.keyboardAppearance = .dark
        textField.returnKeyType = .done
        textField.textContentType = .emailAddress
        textField.translatesAutoresizingMaskIntoConstraints = false

        return textField
    }
    // MARK: - Password
    private func getPasswordLabel() -> UILabel {
        let label = UILabel()
        label.text = "Pasword"
        label.font = .systemFont(ofSize: LabelSize.Small.fontSize, weight: .bold)
        label.textColor = .customRed
        label.translatesAutoresizingMaskIntoConstraints = false

        return label
    }

    private func getPasswordTextField() -> UITextField {
        let textField = UITextField()
        textField.text = "password"
        textField.font = .systemFont(ofSize: LabelSize.Small.fontSize, weight: .bold)
        textField.autocapitalizationType = .none
        textField.autocorrectionType = .no
        textField.keyboardAppearance = .dark
        textField.returnKeyType = .done
        textField.textContentType = .password
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }
    // MARK: - Additional methods
    private func layoutTextFieldBorder(_ sender: UITextField) {
        let border = CALayer()
        let width = CGFloat(1.0)
        border.borderColor = UIColor.gray.cgColor
        border.frame = CGRect(
            x: 0,
            y: sender.frame.size.height - width,
            width: sender.frame.size.width,
            height: sender.frame.size.height
        )
        border.borderWidth = width
        sender.layer.addSublayer(border)
        sender.layer.masksToBounds = true
    }
}

// MARK: - Constraints
private extension LoginView {
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            // Title image
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
            // Sign In
            signInLabel.topAnchor.constraint(
                equalTo: titleImageView.bottomAnchor,
                constant: CommonSize.Padding.medium
            ),
            signInLabel.leadingAnchor.constraint(equalTo: titleImageView.leadingAnchor),
            signInLabel.trailingAnchor.constraint(equalTo: titleImageView.trailingAnchor),
            // Email section
            emailLabel.topAnchor.constraint(
                equalTo: signInLabel.bottomAnchor,
                constant: CommonSize.Padding.small
            ),
            emailLabel.leadingAnchor.constraint(equalTo: titleImageView.leadingAnchor),
            emailLabel.trailingAnchor.constraint(equalTo: titleImageView.trailingAnchor),

            emailTextField.topAnchor.constraint(equalTo: emailLabel.bottomAnchor),
            emailTextField.leadingAnchor.constraint(equalTo: titleImageView.leadingAnchor),
            emailTextField.trailingAnchor.constraint(equalTo: titleImageView.trailingAnchor),
            emailTextField.heightAnchor.constraint(equalToConstant: CommonSize.Small.height)
            // Password section

        ])
    }
}
