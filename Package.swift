/// to rebuild - use https://github.com/nubbel/swift-tensorflow/

import PackageDescription

let package = Package(
        name: "protoTensorFlow",
    targets: [
        Target(name: "protoTensorFlow")
    ],
    dependencies: [
        .Package(url: "https://github.com/apple/swift-protobuf.git", Version(0,9,902))//,
            // Use vanilla protobuf
            //.Package(url: "https://github.com/grpc/grpc-swift.git", Version(0,1,10))
    ]
)
