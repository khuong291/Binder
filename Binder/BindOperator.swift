//
//  BindOperator.swift
//  Binder
//
//  Created by KhuongPham on 2/7/18.
//  Copyright © 2018 KhuongPham. All rights reserved.
//

precedencegroup BindOperator {
    associativity: left
}

infix operator <-> : BindOperator
