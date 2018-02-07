//
//  Binder.swift
//  Binder
//
//  Created by KhuongPham on 2/7/18.
//  Copyright © 2018 KhuongPham. All rights reserved.
//

open class Binder<V, T> {
    open var value: V {
        didSet {
            listener?(value)
        }
    }
    
    open let type: T
    
    private var listener: ((V) -> Void)?
    
    public init(value: V, type: T) {
        self.value = value
        self.type = type
    }
    
    open func bind(_ closure: @escaping (V) -> Void) {
        closure(value)
        listener = closure
    }
    
    open func remove() {
        listener = nil
    }
}
