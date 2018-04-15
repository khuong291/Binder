//
//  UIImageView+Binder.swift
//  Binder
//
//  Created by KhuongPham on 2/11/18.
//  Copyright © 2018 KhuongPham. All rights reserved.
//

public enum ImageViewBindingType: Bindable {
    case frame
    case bounds
    case center
    case backgroundColor
    case alpha
    case isHidden
    
    case image
    case tintColor
}

@discardableResult
public func <-><V, T>(binder: Binder<V, T>, imageView: UIImageView) -> Binder<V, T> {
    guard let type = binder.type as? ImageViewBindingType else {
        return binder
    }
    
    binder.bind { value in
        switch type {
        case .frame:
            imageView.frame = value as! CGRect
        case .bounds:
            imageView.bounds = value as! CGRect
        case .center:
            imageView.center = value as! CGPoint
        case .backgroundColor:
            imageView.backgroundColor = value as? UIColor
        case .alpha:
            imageView.alpha = value as! CGFloat
        case .isHidden:
            imageView.isHidden = value as! Bool
            
        case .image:
            imageView.image = value as? UIImage
        case .tintColor:
            imageView.tintColor = value as? UIColor
        }
    }
    
    return binder
}

@discardableResult
public func <-><V, T>(binder: Binder<V, T>, imageViews: [UIImageView]) -> Binder<V, T> {
    imageViews.forEach {
        binder <-> $0
    }
    return binder
}
