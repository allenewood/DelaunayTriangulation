// swift-tools-version:6.0
import PackageDescription

let package = Package(
    name: "DelaunayTriangulation",
    platforms: [
        .iOS(.v16),    // Match PuttScan Pro's minimum target
        .macOS(.v13)   // Include macOS for development/testing
    ],
    products: [
        .library(
            name: "DelaunayTriangulation",
            targets: ["DelaunayTriangulation"]),
    ],
    dependencies: [],  // No external dependencies needed
    targets: [
        .target(
            name: "DelaunayTriangulation",
            dependencies: [],
            path: "Sources"
        ),
        .testTarget(
            name: "DelaunayTriangulationTests",
            dependencies: ["DelaunayTriangulation"],
            path: "Tests"
        )
    ]
)