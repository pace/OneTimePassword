// swift-tools-version:5.1
import PackageDescription

let package = Package(
    name: "OneTimePassword",
    platforms: [
        .iOS(.v11),
        .watchOS(.v2)
    ],
    products: [
        .library(
            name: "OneTimePassword",
            targets: ["OneTimePassword"])
    ],
    dependencies: [
        .package(url: "file:///Users/pan/desktop/code/ios/Base32", .branch("Fix-xcodebuild"))
    ],
    targets: [
        .target(name: "OneTimePassword", dependencies: ["Base32"], path: "Sources"),
        .testTarget(name: "OneTimePasswordTests", dependencies: ["OneTimePassword"], path: "Tests")
    ]
)
