import PackageDescription

let package = Package(
    name: "gRPCTensorFlow",
    targets: [
        Target(name: "gRPCTensorFlow")
    ],
    dependencies: [
        .Package(url: "https://github.com/apple/swift-protobuf.git", Version(0,9,902)),
        .Package(url: "https://github.com/grpc/grpc-swift.git", Version(0,1,10))
    ]
)
