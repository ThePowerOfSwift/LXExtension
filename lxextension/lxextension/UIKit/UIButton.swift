//
//  UIButton.swift
//  LXExtension
//
//  Created by Minh Luan Tran on 2/24/19.
//

import UIKit

extension UIButton {
    
    public func adjustContentOffset() {
        let spacing: CGFloat = 4.0
        
        if let imageView = imageView,
            let titleLabel = titleLabel {
            let imageSize = imageView.frame.size
            let titleSize = titleLabel.frame.size
            
            titleEdgeInsets = UIEdgeInsets(top: 0, left: -imageSize.width, bottom: -(imageSize.height + spacing), right: 0)
            imageEdgeInsets = UIEdgeInsets(top: -(titleSize.height + spacing), left: 0, bottom: 0, right: -titleSize.width)
        }
    }
    
    public convenience init(text: String, titleFont: UIFont, titleColor: UIColor, contentInsets: UIEdgeInsets = UIEdgeInsets.zero) {
        self.init(type: .system)
        
        setTitle(text, for: .normal)
        setTitleColor(titleColor, for: .normal)
        titleLabel?.font = titleFont
        
        contentEdgeInsets = contentInsets
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    public convenience init(image: UIImage, type: UIButton.ButtonType = UIButton.ButtonType.system) {
        self.init(type: type)
        
        setImage(image, for: .normal)
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    public convenience init(image: UIImage, type: UIButton.ButtonType = UIButton.ButtonType.system, contentInsets: UIEdgeInsets = UIEdgeInsets.zero) {
        self.init(image: image, type: type)
        
        contentEdgeInsets = contentInsets
    }
    
}
