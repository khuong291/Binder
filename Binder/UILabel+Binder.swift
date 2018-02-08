//
//  UILabel+Binder.swift
//  Binder
//
//  Created by KhuongPham on 2/7/18.
//  Copyright © 2018 KhuongPham. All rights reserved.
//

public enum LabelBindingType {
    case text
    case font
    case textColor
    case isUserInteractionEnabled
    case isEnabled
}

public func <-><T>(binder: Binder<T, LabelBindingType>, label: UILabel) -> Binder<T, LabelBindingType> {
    switch binder.type {
    case .text:
        binder.bind { value in
            guard let value = value as? String else {
                return
            }
            label.text = value
        }
        
    case .font:
        binder.bind { value in
            guard let value = value as? UIFont else {
                return
            }
            label.font = value
        }
        
    case .textColor:
        binder.bind { value in
            guard let value = value as? UIColor else {
                return
            }
            label.textColor = value
        }
        
    case .isUserInteractionEnabled:
        binder.bind { value in
            guard let value = value as? Bool else {
                return
            }
            label.isUserInteractionEnabled = value
        }
        
    case .isEnabled:
        binder.bind { value in
            guard let value = value as? Bool else {
                return
            }
            label.isEnabled = value
        }
    }
    
    return binder

}

