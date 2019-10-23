// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "SwiftyHue",
    platforms: [
        .macOS(.v10_11), .iOS(.v10), .tvOS(.v10)
    ],
    products: [
        .library(name: "Base", targets: ["Base"]),
        .library(name: "BridgeServices", targets: ["BridgeServices"])
    ],
    dependencies: [
        .package(url: "https://github.com/Alamofire/Alamofire.git", from: "5.0.0-rc.2"),
        .package(url: "https://github.com/hkellaway/Gloss.git", Version("3.0.0")..<Version("4.0.0")),
        .package(url: "https://github.com/wfltaylor/CocoaAsyncSocket.git", .branch("master"))
    ],
    targets: [
        .target(name: "Base", dependencies: ["Alamofire", "Gloss"]),
        .target(name: "BridgeServices", dependencies: ["Alamofire", "Gloss", "CocoaAsyncSocket"])
    ],
    swiftLanguageVersions: [.v5]
)
