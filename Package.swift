// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CardLinkSDK",
    platforms: [
        .iOS(.v17)
    ],
    products: [
        .library(
            name: "CardLinkSDK",
            targets: ["CardLinkSDKWrapper"])
    ],
    dependencies: [
        .package(url: "https://github.com/gematik/OpenSSL-Swift", from: "4.0.0"),
    ],
    targets: [
        // Docs: https://docs.swift.org/package-manager/PackageDescription/PackageDescription.html#target
        .binaryTarget(
            name: "CardLinkSDK",
            url: "https://github.com/DanijelHuis/TestRepo/releases/download/0.0.1/CardLinkSDK.xcframework.zip", 
            checksum: "1c6a58a0a6e1768d75560627dbb28fbf22a868145217b1d98becdd3c9652c7ef"
            //dependencies: [...]     // Nope, binaryTarget cannot have dependenices for some reason.
        ),
        // binaryTarget doesn't support dependencies. That means that we cannot specify that WeatherSDK depends on WeatherCore.
        // The workaround is to create wrapper target (WeatherSDKTargets) and specify WeatherCore and WeatherSDK as its dependencies. That way Xcode will pull both.
        // Note that this wrapper target is not actual target in Xcode, it doesn't exist except here in package.
        // In order for this to work I had to add Sources/WeatherSDK/Empty.swift.
        .target(
            name: "CardLinkSDKWrapper",
            dependencies: [ 
                .target(name: "CardLinkSDK"),
                .product(name: "OpenSSL-Swift", package: "OpenSSL-Swift"),
            ],
            path: "Sources/CardLinkSDKWrapper"  // This must exist and it must have some empty source file.
        )
    ]
)
