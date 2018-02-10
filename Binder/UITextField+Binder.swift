//
//  UITextField+Binder.swift
//  Binder
//
//  Created by KhuongPham on 2/10/18.
//  Copyright © 2018 KhuongPham. All rights reserved.
//

public enum TextFieldBindingType: Bindable {
    case frame
    case bounds
    case center
    case backgroundColor
    case alpha
    case isHidden
    
    case text
    case font
    case textColor
    case placeholder
}

@discardableResult
public func <-><V, T>(binder: Binder<V, T>, textField: UITextField) -> Binder<V, T> {
    guard let type = binder.type as? TextFieldBindingType else {
        return binder
    }
    
    binder.bind { value in
        switch type {
        case .frame:
            textField.frame = value as! CGRect
        case .bounds:
            textField.bounds = value as! CGRect
        case .center:
            textField.center = value as! CGPoint
        case .backgroundColor:
            textField.backgroundColor = value as? UIColor
        case .alpha:
            textField.alpha = value as! CGFloat
        case .isHidden:
            textField.isHidden = value as! Bool
            
        case .text:
            textField.text = value as? String
        case .font:
            textField.font = value as? UIFont
        case .textColor:
            textField.textColor = value as? UIColor
        case .placeholder:
            textField.placeholder = value as? String
        }
    }
    
    return binder
}

@discardableResult
public func <-><V, T>(binder: Binder<V, T>, textFields: [UITextField]) -> Binder<V, T> {
    textFields.forEach {
        binder <-> $0
    }
    return binder
}


