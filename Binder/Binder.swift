//
//  Binder.swift
//  Binder
//
//  Created by KhuongPham on 2/7/18.
//  Copyright © 2018 KhuongPham. All rights reserved.
//

class Binder<V, T> {
    var value: V {
        didSet {
            listener?(value)
        }
    }
    
    let type: T
    
    private var listener: ((V) -> Void)?
    
    init(value: V, type: T) {
        self.value = value
        self.type = type
    }
    
    func bind(_ closure: @escaping (V) -> Void) {
        closure(value)
        listener = closure
    }
    
    func remove() {
        listener = nil
    }
}
