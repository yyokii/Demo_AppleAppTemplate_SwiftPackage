# template-develop-apple-app-using-spm

This is the foundation for app development using Swift Packages.

## What is Swift Packages?

> Swift packages are reusable components of Swift, Objective-C, Objective-C++, C, or C++ code that developers can use in their projects. They bundle source files, binaries, and resources in a way that’s easy to use in your app’s project. 
Xcode supports creating and publishing Swift packages, as well as adding, removing, and managing package dependencies. Its support for Swift packages is built on top of the open source Swift Package Manager project.

[Swift Packages | Apple Developer Documentation](https://developer.apple.com/documentation/swift_packages)

## Directory structure
```
.
├── App: **Application clients and their settings**
│   ├── Develop.xcodeproj
│   ├── Package.swift: **This is only here so that Xcode doesn't display it**
│   ├── Production.xcodeproj
│   └── iOS
│       ├── AppDelegate.swift
│       ├── Assets.xcassets
│       └── Preview Content
├── MyProject.xcworkspace
├── MyProject **Main soureces**
│    ├── Sources: **Split and add source code for functions, UI, etc.**
│       └── App
│       │   ├── AppDelegate.swift
│       │   ├── ContentView.swift
│       │   └── SceneDelegate.swift
│       └── Tests
│           └── AppTests
│               └── AppTests.swift
│

```

## workflow

This sample was created with the following workflow

1. Create Workspace
2. Add Project ( Add to Workspace, Group of Workspace )
3. Add Swift Package ( Add to Workspace, Group of Workspace )
4. Move the application source code to the Swift Package
5. Edit Package.swift
6. Adding Swift  Package to App's TARGET

## References
* [isowords の構成で 3週間 開発して得た知見 2021/05/19 CA.swift #14](https://speakerdeck.com/ryitto/ca-dot-swift-number-14)
* [Swift PMとマルチプロジェクトでBuild Configurationをクリーンに保つ](https://www.notion.so/Swift-PM-Build-Configuration-4f14ceac795a4338a5a44748adfeaa40)
* [tarunon/ios_boilerplate](https://github.com/tarunon/ios_boilerplate)

