//
//  UIIamge + Extension.swift
//  MessengerApp
//
//  Created by Macbook on 10.02.2022.
//

import UIKit

extension UIImageView {
    convenience init(image: UIImage?, contentMode: UIView.ContentMode) {
        self.init()
        
        self.image = image
        self.contentMode = contentMode
    }
}
