<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTX21VMdfHyYy2XUmrBGWjnM9bkoXttqJIVkX0FpX12-t3UoKaQ" width="700">

[![Version](https://img.shields.io/cocoapods/v/Binder.svg?style=flat)](http://cocoapods.org/pods/Binder)
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)
[![Swift 4.0](https://img.shields.io/badge/Swift-4.0-orange.svg?style=flat)](https://developer.apple.com/swift/)
[![Platform](https://img.shields.io/cocoapods/p/Binder.svg?style=flat)](http://cocoapods.org/pods/Binder)
[![License](https://img.shields.io/cocoapods/l/Binder.svg?style=flat)](http://cocoapods.org/pods/Binder)

*A lightweight data binding for components on iOS*

## About

A lightweight data binding for components on iOS, easy to use and does not have retain cycle.

<img src="https://github.com/khuong291/Binder/blob/master/Binder.gif" width="250">

## Contributing

1. Fork project
2. Checkout **master** branch
3. Create **Feature** branch off of the **master** branch
4. Create awesome feature/enhancement/bug-fix
5. Optionally create *Issue* to discuss feature
6. Submit pull request from your **Feature** branch to Binder's **master** branch

## Installation

### [Cocoapods](http://cocoapods.org)

```ruby
use_frameworks!

pod 'Binder'
```

### [Carthage](https://github.com/Carthage/Carthage)
Add Binder to you `Cartfile`
```sh
github "khuong291/Binder"
```
Install using
```sh
carthage update --platform ios
```

### Manually
1. Download and drop ```/Binder``` folder in your project.  
2. You're done!

## Getting started

### Create a Binder object:

```swift
private let colorBinder: Binder<UIColor, ViewBindingType> = Binder(value: .white, type: .backgroundColor)
private let textBinder: Binder<String, LabelBindingType> = Binder(value: "Hello", type: .text)
```

### You can bind many components as you want:

```swift
colorBinder <-> [view1, view2, view3, view4]
textBinder <-> label1 <-> label2 <-> label3 <-> label4
```

### Change the binder value:

```swit
colorBinder.value = .green
textBinder.value = "Green Color"
```

### If you want to avoid retain cycle, you should remove binder objects:

```swift
deinit {
    colorBinder.remove()
    textBinder.remove()
}
```

### And that's it ;)


## Requirements

* iOS 9.0+
* Xcode 8.0+
* Swift 3.0+

##  Author
[Khuong Pham](https://khuong291.github.io/home/) <br>

## License
Binder is released under the MIT license.  
See LICENSE for details.
