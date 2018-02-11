//
//  UIButton+Binder.swift
//  Binder
//
//  Created by KhuongPham on 2/11/18.
//  Copyright © 2018 KhuongPham. All rights reserved.
//

public enum ButtonBindingType: Bindable {
    case frame
    case bounds
    case center
    case backgroundColor
    case alpha
    case isHidden
    
    case title(UIControlState)
    case titleColor(UIControlState)
    case image(UIControlState)
}

@discardableResult
public func <-><V, T>(binder: Binder<V, T>, button: UIButton) -> Binder<V, T> {
    guard let type = binder.type as? ButtonBindingType else {
        return binder
    }
    
    binder.bind { value in
        switch type {
        case .frame:
            button.frame = value as! CGRect
        case .bounds:
            button.bounds = value as! CGRect
        case .center:
            button.center = value as! CGPoint
        case .backgroundColor:
            button.backgroundColor = value as? UIColor
        case .alpha:
            button.alpha = value as! CGFloat
        case .isHidden:
            button.isHidden = value as! Bool
            
        case .title(let state):
            button.setTitle(value as? String, for: state)
        case .titleColor(let state):
            button.setTitleColor(value as? UIColor, for: state)
        case .image(let state):
            button.setImage(value as? UIImage, for: state) 
        }
    }
    
    return binder
}

@discardableResult
public func <-><V, T>(binder: Binder<V, T>, buttons: [UIButton]) -> Binder<V, T> {
    buttons.forEach {
        binder <-> $0
    }
    return binder
}
