// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "RxSkeleton",
    platforms: [
      .iOS(.v9)
    ],
    products: [
        .library(name: "RxSkeleton", targets: ["RxSkeleton"])
    ],
    dependencies: [
        .package(url: "https://github.com/RxSwiftCommunity/RxDataSources", .upToNextMajor(from: "4.0.0")),
        .package(url: "https://github.com/Juanpe/SkeletonView", .upToNextMajor(from: "1.7.0"))
    
    ],
    targets: [
        .target(name: "RxSkeleton", dependencies: ["RxDataSources", "SkeletonView"])
    ],
    swiftLanguageVersions: [.v5]
)
