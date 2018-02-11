//
//  UIView+Binder.swift
//  Binder
//
//  Created by KhuongPham on 2/7/18.
//  Copyright © 2018 KhuongPham. All rights reserved.
//

public enum ViewBindingType: Bindable {
    case frame
    case bounds
    case center
    case backgroundColor
    case alpha
    case isHidden
}

@discardableResult
public func <-><V, T>(binder: Binder<V, T>, view: UIView) -> Binder<V, T> {
    guard let type = binder.type as? ViewBindingType else {
        return binder
    }
    
    binder.bind { value in
        switch type {
        case .frame:
            view.frame = value as! CGRect
        case .bounds:
            view.bounds = value as! CGRect
        case .center:
            view.center = value as! CGPoint
        case .backgroundColor:
            view.backgroundColor = value as? UIColor
        case .alpha:
            view.alpha = value as! CGFloat
        case .isHidden:
            view.isHidden = value as! Bool
        }
    }
    
    return binder
}

@discardableResult
public func <-><V, T>(binder: Binder<V, T>, views: [UIView]) -> Binder<V, T> {
    views.forEach {
        binder <-> $0
    }
    return binder
}
