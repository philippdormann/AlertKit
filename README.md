# AlertKit
```swift
AlertKitAPI.present(
    title: "Added to Library",
    icon: .done,
    style: .iOS17AppleMusic,
    haptic: .success
)
```
## Navigate

- [Installation](#installation)
  - [Swift Package Manager](#swift-package-manager)
- [SwiftUI](#swiftui)
- [Customisation](#customisation)

## Installation

Ready to use on iOS 13+. Supports iOS and visionOS. Working with `UIKit` and `SwiftUI`.

### Swift Package Manager

In Xcode go to Project -> Your Project Name -> `Package Dependencies` -> Tap _Plus_. Insert url:

```
https://github.com/philippdormann/AlertKit
```

or adding it to the `dependencies` of your `Package.swift`:

```swift
dependencies: [
    .package(url: "https://github.com/philippdormann/AlertKit", .upToNextMajor(from: "5.2.0"))
]
```

## SwiftUI

You can use basic way via AlertKitAPI or call via modifier:

```swift
let alertView = AlertAppleMusic17View(title: "Hello", subtitle: nil, icon: .done)

VStack {}
    .alert(isPresent: $alertPresented, view: alertView)
```

## Customisation

If you need customisation fonts, icon, colors or any other, make view:

```swift
let alertView = AlertAppleMusic17View(title: "Added to Library", subtitle: nil, icon: .done)
// Change Font
alertView.titleLabel.font = UIFont.systemFont(ofSize: 21)
// Change Color
alertView.titleLabel.textColor = .white
```
