// swift-tools-version:5.1
import PackageDescription

let package = Package(
    name: "OneTimePassword",
    platforms: [
        .iOS(.v9),
        .watchOS(.v2)
    ],
    products: [
        .library(
            name: "OneTimePassword",
            targets: ["OneTimePassword"])
    ],
    dependencies: [
        .package(url: "https://github.com/pace/Base32", .exact("1.2.1"))
    ],
    targets: [
        .target(name: "OneTimePassword", dependencies: ["Base32"], path: "Sources"),
        .testTarget(name: "OneTimePasswordTests", dependencies: ["OneTimePassword"], path: "Tests")
    ]
)
