//
//  ViewController.swift
//  Example
//
//  Created by KhuongPham on 4/15/18.
//  Copyright © 2018 KhuongPham. All rights reserved.
//

import UIKit
import Binder

class ViewController: UIViewController {
    
    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var view2: UIView!
    @IBOutlet weak var view3: UIView!
    @IBOutlet weak var view4: UIView!
    
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var label4: UILabel!
    
    
    private let colorBinder: Binder<UIColor, ViewBindingType> = Binder(value: .white, type: .backgroundColor)
    private let textBinder: Binder<String, LabelBindingType> = Binder(value: "Hello", type: .text)
    
    deinit {
        colorBinder.remove()
        textBinder.remove()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorBinder <-> [view1, view2, view3, view4]
        textBinder <-> label1 <-> label2 <-> label3 <-> label4
    }

    @IBAction func greenButtonTapped(_ sender: Any) {
        colorBinder.value = .green
        textBinder.value = "Green Color"
    }
    
    @IBAction func blueButtonTapped(_ sender: Any) {
        colorBinder.value = .blue
        textBinder.value = "Blue Color"
    }
}

