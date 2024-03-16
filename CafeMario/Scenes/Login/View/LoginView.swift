//
//  LoginView.swift
//  CafeMario
//
//  Created by Andrei Shpartou on 14/03/2024.
//

import UIKit

class LoginView: UIView {
    private lazy var titleImageView: UIImageView = getTitleImageView()

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
    }

    private func getTitleImageView() -> UIImageView {
        let imageView = UIImageView(image: I.titleImage.image)
        imageView.contentMode = .scaleAspectFill
        imageView.layer.cornerRadius = CommonSize.Large.height / 2
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
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
            titleImageView.heightAnchor.constraint(equalToConstant: CommonSize.Large.height)
        ])
    }
}
