//
//  UILabel+Binder.swift
//  Binder
//
//  Created by KhuongPham on 2/7/18.
//  Copyright © 2018 KhuongPham. All rights reserved.
//

public enum LabelBindingType: Bindable {
    case frame
    case bounds
    case center
    case backgroundColor
    case alpha
    case isHidden
    
    case text
    case font
    case textColor
    case isUserInteractionEnabled
    case isEnabled
}

@discardableResult
public func <-><V, T>(binder: Binder<V, T>, label: UILabel) -> Binder<V, T> {
    guard let type = binder.type as? LabelBindingType else {
        return binder
    }
    
    binder.bind { value in
        switch type {
        case .frame:
            label.frame = value as! CGRect
        case .bounds:
            label.bounds = value as! CGRect
        case .center:
            label.center = value as! CGPoint
        case .backgroundColor:
            label.backgroundColor = value as? UIColor
        case .alpha:
            label.alpha = value as! CGFloat
        case .isHidden:
            label.isHidden = value as! Bool
            
        case .text:
            label.text = value as? String
        case .font:
            label.font = value as? UIFont
        case .textColor:
            label.textColor = value as? UIColor
        case .isUserInteractionEnabled:
            label.isUserInteractionEnabled = value as! Bool
        case .isEnabled:
            label.isEnabled = value as! Bool
        }
    }
    
    return binder
}

@discardableResult
public func <-><V, T>(binder: Binder<V, T>, labels: [UILabel]) -> Binder<V, T> {
    labels.forEach {
        binder <-> $0
    }
    return binder
}
