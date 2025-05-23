// swift-tools-version: 6.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "InfiniteLayout",
    platforms: [.iOS(.v16)],
    products: [
        .library(
            name: "InfiniteLayout",
            targets: ["InfiniteLayout", "InfiniteLayoutObjc"])
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "InfiniteLayoutObjc",
            dependencies: [],
            path: "InfiniteLayout/Objc",
            publicHeadersPath: "include"
        ),
        .target(
            name: "InfiniteLayout",
            dependencies: ["InfiniteLayoutObjc"],
            path: "InfiniteLayout/Classes",
        ),
    ]
)
