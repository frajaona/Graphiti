// swift-tools-version:5.1
import PackageDescription

let package = Package(
    name: "Graphiti",
    products: [
        .library(name: "Graphiti", targets: ["Graphiti"]),
    ],
    dependencies: [
        .package(url: "https://github.com/frajaona/GraphQL.git", .branch("fix-boolean-serialization")),
        .package(url: "https://github.com/wickwirew/Runtime.git", .upToNextMinor(from: "2.1.0"))
    ],
    targets: [
        .target(name: "Graphiti", dependencies: ["GraphQL", "Runtime"]),
        .testTarget(name: "GraphitiTests", dependencies: ["Graphiti"]),
    ]
)
