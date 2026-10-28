// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "Today",
    platforms: [.macOS(.v14)],
    targets: [
        .executableTarget(name: "Today", path: "Sources"),
        .executableTarget(name: "TodayWidget", path: "Widget",
                          swiftSettings: [.unsafeFlags(["-application-extension"])],
                          linkerSettings: [.unsafeFlags(["-Xlinker", "-e", "-Xlinker", "_NSExtensionMain"])]),
    ]
)
