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
                               backgroundColor: .blackColor())
    
    let loginButton = UIButton(title: "Login",
                               titleColor: .redColor(),
                               backgroundColor: .white,
                               isShadow: true)

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(emailButton)
    }


}


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
