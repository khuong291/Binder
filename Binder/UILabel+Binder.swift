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
    case shadowColor
    case shadowOffset
    case textAlignment
    case lineBreakMode
    case highlightedTextColor
    case isHighlighted
    case isUserInteractionEnabled
    case isEnabled
    case adjustsFontSizeToFitWidth
    case baselineAdjustment
}

public func <-><T>(binder: Binder<T, LabelBindingType>, label: UILabel) {
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
        
    case .shadowColor:
        binder.bind { value in
            guard let value = value as? UIColor else {
                return
            }
            label.shadowColor = value
        }
        
    case .shadowOffset:
        binder.bind { value in
            guard let value = value as? CGSize else {
                return
            }
            label.shadowOffset = value
        }
        
    case .textAlignment:
        binder.bind { value in
            guard let value = value as? UIColor else {
                return
            }
            label.textColor = value
        }
        
    case .lineBreakMode:
        binder.bind { value in
            guard let value = value as? NSLineBreakMode else {
                return
            }
            label.lineBreakMode = value
        }
        
    case .highlightedTextColor:
        binder.bind { value in
            guard let value = value as? UIColor else {
                return
            }
            label.highlightedTextColor = value
        }
        
    case .isHighlighted:
        binder.bind { value in
            guard let value = value as? Bool else {
                return
            }
            label.isHighlighted = value
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
        
    case .adjustsFontSizeToFitWidth:
        binder.bind { value in
            guard let value = value as? Bool else {
                return
            }
            label.adjustsFontSizeToFitWidth = value
        }
        
    case .baselineAdjustment:
        binder.bind { value in
            guard let value = value as? UIBaselineAdjustment else {
                return
            }
            label.baselineAdjustment = value
        }
    }

}

