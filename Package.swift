// swift-tools-version: 6.0
import PackageDescription

let package = Package(
    name: "SwiftUIButtons",
    platforms: [
        .macOS(.v10_15),
        .iOS(.v13),
        .tvOS(.v13),
        .watchOS(.v7)
    ],
    products: [
        .library(
            name: "SwiftUIButtons",
            targets: ["SwiftUIButtons"]
        ),
    ],
    dependencies: [
        // Snapshot testing
        .package(
            url: "https://github.com/pointfreeco/swift-snapshot-testing.git",
            from: "1.15.0"
        ),
        // Custom dump (pretty-printing for tests)
        .package(
            url: "https://github.com/pointfreeco/swift-custom-dump.git",
            from: "0.10.0"
        ),
        // Dynamic overlay for XCTest
        .package(
            url: "https://github.com/pointfreeco/xctest-dynamic-overlay.git",
            from: "0.8.0"
        )
    ],
    targets: [
        .target(
            name: "SwiftUIButtons",
            dependencies: []
        ),
        .testTarget(
            name: "SwiftUIButtonsTests",
            dependencies: [
                "SwiftUIButtons",
                .product(name: "SnapshotTesting", package: "swift-snapshot-testing"),
                .product(name: "CustomDump", package: "swift-custom-dump"),
                .product(name: "XCTestDynamicOverlay", package: "xctest-dynamic-overlay")
            ]
        ),
    ]
)
