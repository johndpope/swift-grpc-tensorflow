import PackageDescription

let package = Package(
    name: "protoTensorFlow",
    targets: [
        Target(name: "protoTensorFlow")
    ],
    dependencies: [
        .Package(url: "https://github.com/apple/swift-protobuf.git", Version(0,9,902)),
    ]
)
