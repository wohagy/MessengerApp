//
//  ViewController.swift
//  MessengerApp
//
//  Created by Macbook on 10.02.2022.
//

import UIKit

class AuthViewController: UIViewController {
    
    let logoImageView = UIImageView(image: #imageLiteral(resourceName: "Logo"), contentMode: .scaleAspectFill)
    
    let googleLabel = UILabel(text: "Get started with")
    let emailLabel = UILabel(text: "Or sign up")
    let alredyOnboardLabel = UILabel(text: "Already onboard?")
    
    let googleButton = UIButton(title: "Google",
                               titleColor: .black,
                               backgroundColor: .white,
                               isShadow: true)
    
    let emailButton = UIButton(title: "Email",
                               titleColor: .white,
                               backgroundColor: .buttonDark())
    
    let loginButton = UIButton(title: "Login",
                               titleColor: .buttonRed(),
                               backgroundColor: .white,
                               isShadow: true)

    override func viewDidLoad() {
        super.viewDidLoad()
        setupConstraint()
    }

}

// MARK: Setup Constraint

extension AuthViewController {
    
    private func setupConstraint() {
        let googleStack = ButtonFormView(label: googleLabel, button: googleButton)
        
        let emailStack = ButtonFormView(label: emailLabel, button: emailButton)
        
        let alreadyOnboardStack = ButtonFormView(label: alredyOnboardLabel, button: loginButton)
        
        let buttonStackView = UIStackView(arrangedSubviews: [googleStack,emailStack,alreadyOnboardStack], axis: .vertical, spacing: 40)
        
        let stackView = UIStackView(arrangedSubviews: [logoImageView,buttonStackView], axis: .vertical, spacing: 100)
        
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        logoImageView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(stackView)
            
        NSLayoutConstraint.activate([
            
            stackView.topAnchor.constraint(equalTo: view.topAnchor, constant: 150),
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40)
        ])
    }
}

// MARK: - SWIFT UI

import SwiftUI

struct ViewControllerProvider: PreviewProvider {
    static var previews: some View {
        ContainerView().edgesIgnoringSafeArea(.all)
    }
    
    struct ContainerView: UIViewControllerRepresentable {
        
        let viewController = AuthViewController()
        
        func makeUIViewController(context: UIViewControllerRepresentableContext<ViewControllerProvider.ContainerView>) -> AuthViewController {
            return viewController
        }
        
        func updateUIViewController(_ uiViewController: ViewControllerProvider.ContainerView.UIViewControllerType, context: UIViewControllerRepresentableContext<ViewControllerProvider.ContainerView>) {
            
        }
    }
}
