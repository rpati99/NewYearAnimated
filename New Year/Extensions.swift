//
//  Extensions.swift
//  Test
//
//  Created by Rachit Prajapati on 29/12/20.
//

import UIKit

extension UIView {

        func anchor(top: NSLayoutYAxisAnchor? = nil,
                    left: NSLayoutXAxisAnchor? = nil,
                    bottom: NSLayoutYAxisAnchor? = nil,
                    right: NSLayoutXAxisAnchor? = nil,
                    paddingTop: CGFloat = 0,
                    paddingLeft: CGFloat = 0,
                    paddingBottom: CGFloat = 0,
                    paddingRight: CGFloat = 0,
                    width: CGFloat? = nil,
                    height: CGFloat? = nil) {
            
            translatesAutoresizingMaskIntoConstraints = false

            if let top = top {
                topAnchor.constraint(equalTo: top, constant: paddingTop).isActive = true
            }
            
            if let left = left {
                leftAnchor.constraint(equalTo: left, constant: paddingLeft).isActive = true
            }
            
            if let bottom = bottom {
                bottomAnchor.constraint(equalTo: bottom, constant: -paddingBottom).isActive = true
            }
            
            if let right = right {
                rightAnchor.constraint(equalTo: right, constant: -paddingRight).isActive = true
            }
            
            if let width = width {
                widthAnchor.constraint(equalToConstant: width).isActive = true
            }
            
            if let height = height {
                heightAnchor.constraint(equalToConstant: height).isActive = true
            }
        }
        

    func centerX(inView view: UIView, constant: CGFloat? = nil) {
        if let const = constant {
            centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: const).isActive = true
        }
       
        }
        
    func centerY(inView view: UIView, constant: CGFloat? = nil) {
        if let const = constant {
            centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: const).isActive = true
        }
    }
    
    
}

extension UILabel {

    func labelMaker(title: String,  font: String , size: CGFloat) -> UILabel {
        let label = UILabel()
        label.textColor = .white
        label.font = UIFont(name: font, size: size)
        label.text = title
        return label
    }
}


