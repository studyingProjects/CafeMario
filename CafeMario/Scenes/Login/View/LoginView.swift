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
    private lazy var logInButton: UIButton = getLogInButton()

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
        layoutTextFieldBorder(passwordTextField)

        // Adjust ImageView corner radius
        var maxLength = titleImageView.frame.height
        if maxLength < titleImageView.frame.width {
            maxLength = titleImageView.frame.width
        }
        titleImageView.layer.cornerRadius = maxLength / 2
    }

    // MARK: - Setup Views
    private func setupViews() {
        backgroundColor = .white

        addSubview(titleImageView)
        addSubview(signInLabel)
        addSubview(emailLabel)
        addSubview(emailTextField)
        addSubview(passwordLabel)
        addSubview(passwordTextField)
        addSubview(logInButton)
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
        textField.isSecureTextEntry = true
        textField.rightView = getShowHideButton()
        textField.rightViewMode = .always
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }

    private func getShowHideButton() -> UIButton {
        let button = UIButton()
        let imageHide = UIImage(systemName: "eye.slash.fill")
        let imageShow = UIImage(systemName: "eye.fill")
        button.setImage(imageHide, for: .normal)
        button.setImage(imageShow, for: .selected)
        button.sizeToFit()
        button.addTarget(
            self,
            action: #selector(hideShowButtonPressed),
            for: .touchUpInside
        )

        return button
    }
    // MARK: - LogIn button
    private func getLogInButton() -> UIButton {
        let button = UIButton()
        button.setTitle("Log in", for: .normal)
        button.backgroundColor = .customRed
        button.setTitleColor(.white, for: .normal)
        button.setTitleColor(.darkGray, for: .highlighted)
        button.layer.cornerRadius = CommonSize.cornerRadius
        button.translatesAutoresizingMaskIntoConstraints = false

        return button
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
    // MARK: - Action methods
    @objc
    func hideShowButtonPressed(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
        passwordTextField.isSecureTextEntry = !sender.isSelected
    }
}

// MARK: - Constraints
private extension LoginView {
    private func setupConstraints() {
        setupHeaderConstraints()
        setupLogInConstraints()
    }

    private func setupHeaderConstraints() {
        NSLayoutConstraint.activate([
            // MARK: - Header
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
            signInLabel.trailingAnchor.constraint(equalTo: titleImageView.trailingAnchor)
        ])
    }

    private func setupLogInConstraints() {
        NSLayoutConstraint.activate([
            // MARK: - Email section
            emailLabel.topAnchor.constraint(
                equalTo: signInLabel.bottomAnchor,
                constant: CommonSize.Padding.small
            ),
            emailLabel.leadingAnchor.constraint(equalTo: titleImageView.leadingAnchor),
            emailLabel.trailingAnchor.constraint(equalTo: titleImageView.trailingAnchor),

            emailTextField.topAnchor.constraint(equalTo: emailLabel.bottomAnchor),
            emailTextField.leadingAnchor.constraint(equalTo: titleImageView.leadingAnchor),
            emailTextField.trailingAnchor.constraint(equalTo: titleImageView.trailingAnchor),
            emailTextField.heightAnchor.constraint(equalToConstant: CommonSize.Small.height),
            // MARK: - Password section
            passwordLabel.topAnchor.constraint(
                equalTo: emailTextField.bottomAnchor,
                constant: CommonSize.Padding.medium
            ),
            passwordLabel.leadingAnchor.constraint(equalTo: titleImageView.leadingAnchor),
            passwordLabel.trailingAnchor.constraint(equalTo: titleImageView.trailingAnchor),

            passwordTextField.topAnchor.constraint(equalTo: passwordLabel.bottomAnchor),
            passwordTextField.leadingAnchor.constraint(equalTo: titleImageView.leadingAnchor),
            passwordTextField.trailingAnchor.constraint(equalTo: titleImageView.trailingAnchor),
            passwordTextField.heightAnchor.constraint(equalToConstant: CommonSize.Small.height),
            // MARK: - LogInButtpn
            logInButton.leadingAnchor.constraint(
                equalTo: safeAreaLayoutGuide.leadingAnchor,
                constant: CommonSize.Padding.large * 2
            ),
            logInButton.trailingAnchor.constraint(
                equalTo: safeAreaLayoutGuide.trailingAnchor,
                constant: -CommonSize.Padding.large * 2
            ),
            logInButton.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -CommonSize.Padding.large),
            logInButton.heightAnchor.constraint(equalToConstant: ButtonSize.Medium.height)
        ])
    }
}
