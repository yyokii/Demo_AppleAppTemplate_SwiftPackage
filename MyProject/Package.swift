// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MyProject",
    platforms: [
        .iOS(.v16)
    ],
    products: [
        .library(
            name: "App",
            targets: ["App"]),
    ],
    dependencies: [
        .package(url: "https://github.com/realm/SwiftLint", branch: "main"),
        .package(url: "https://github.com/nicklockwood/SwiftFormat", branch: "master")
    ],
    targets: [
        .target(
            name: "App",
            dependencies: []),

        // Test
        .testTarget(
            name: "AppTests",
            dependencies: ["App"]),
    ]
)

// Append common plugins（各ターゲットのpluginsに都度記載するのを省略するために作成）
package.targets = package.targets.map { target -> Target in
    if target.type == .regular || target.type == .test {
        if target.plugins == nil {
            target.plugins = []
        }
        target.plugins?.append(.plugin(name: "SwiftLintPlugin", package: "SwiftLint"))
    }

    return target
}
