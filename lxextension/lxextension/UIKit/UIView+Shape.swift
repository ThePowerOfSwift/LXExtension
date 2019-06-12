//
//  UIView+Shape.swift
//  lxextension
//
//  Created by luantran on 6/4/19.
//  Copyright © 2019 luantran. All rights reserved.
//

import UIKit

extension UIView {
    
    public class func hLine(color: UIColor, height: CGFloat = 1) -> UIView {
        let view = UIView(frame: .zero)
        view.backgroundColor = color
        view.translatesAutoresizingMaskIntoConstraints = false
        view.height(height)
        return view
    }
    
    public class func vLine(color: UIColor, width: CGFloat = 1) -> UIView {
        let view = UIView(frame: .zero)
        view.backgroundColor = color
        view.translatesAutoresizingMaskIntoConstraints = false
        view.width(width)
        return view
    }
    
}