// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: tensorflow_serving/config/logging_config.proto
//
// For information on using the generated types, please see the documenation:
//   https://github.com/apple/swift-protobuf/

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that your are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

public struct Tensorflow_Serving_SamplingConfig: SwiftProtobuf.Message {
  public static let protoMessageName: String = _protobuf_package + ".SamplingConfig"

  /// Requests will be logged uniformly at random with this probability. Valid
  /// range: [0, 1.0].
  public var samplingRate: Double = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  /// Used by the decoding initializers in the SwiftProtobuf library, not generally
  /// used directly. `init(serializedData:)`, `init(jsonUTF8Data:)`, and other decoding
  /// initializers are defined in the SwiftProtobuf library. See the Message and
  /// Message+*Additions` files.
  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularDoubleField(value: &self.samplingRate)
      default: break
      }
    }
  }

  /// Used by the encoding methods of the SwiftProtobuf library, not generally
  /// used directly. `Message.serializedData()`, `Message.jsonUTF8Data()`, and
  /// other serializer methods are defined in the SwiftProtobuf library. See the
  /// `Message` and `Message+*Additions` files.
  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.samplingRate != 0 {
      try visitor.visitSingularDoubleField(value: self.samplingRate, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }
}

/// Configuration for logging query/responses.
public struct Tensorflow_Serving_LoggingConfig: SwiftProtobuf.Message {
  public static let protoMessageName: String = _protobuf_package + ".LoggingConfig"

  public var logCollectorConfig: Tensorflow_Serving_LogCollectorConfig {
    get {return _storage._logCollectorConfig ?? Tensorflow_Serving_LogCollectorConfig()}
    set {_uniqueStorage()._logCollectorConfig = newValue}
  }
  /// Returns true if `logCollectorConfig` has been explicitly set.
  public var hasLogCollectorConfig: Bool {return _storage._logCollectorConfig != nil}
  /// Clears the value of `logCollectorConfig`. Subsequent reads from it will return its default value.
  public mutating func clearLogCollectorConfig() {_storage._logCollectorConfig = nil}

  public var samplingConfig: Tensorflow_Serving_SamplingConfig {
    get {return _storage._samplingConfig ?? Tensorflow_Serving_SamplingConfig()}
    set {_uniqueStorage()._samplingConfig = newValue}
  }
  /// Returns true if `samplingConfig` has been explicitly set.
  public var hasSamplingConfig: Bool {return _storage._samplingConfig != nil}
  /// Clears the value of `samplingConfig`. Subsequent reads from it will return its default value.
  public mutating func clearSamplingConfig() {_storage._samplingConfig = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  /// Used by the decoding initializers in the SwiftProtobuf library, not generally
  /// used directly. `init(serializedData:)`, `init(jsonUTF8Data:)`, and other decoding
  /// initializers are defined in the SwiftProtobuf library. See the Message and
  /// Message+*Additions` files.
  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        switch fieldNumber {
        case 1: try decoder.decodeSingularMessageField(value: &_storage._logCollectorConfig)
        case 2: try decoder.decodeSingularMessageField(value: &_storage._samplingConfig)
        default: break
        }
      }
    }
  }

  /// Used by the encoding methods of the SwiftProtobuf library, not generally
  /// used directly. `Message.serializedData()`, `Message.jsonUTF8Data()`, and
  /// other serializer methods are defined in the SwiftProtobuf library. See the
  /// `Message` and `Message+*Additions` files.
  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if let v = _storage._logCollectorConfig {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
      }
      if let v = _storage._samplingConfig {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  fileprivate var _storage = _StorageClass.defaultInstance
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "tensorflow.serving"

extension Tensorflow_Serving_SamplingConfig: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "sampling_rate"),
  ]

  public func _protobuf_generated_isEqualTo(other: Tensorflow_Serving_SamplingConfig) -> Bool {
    if self.samplingRate != other.samplingRate {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Tensorflow_Serving_LoggingConfig: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "log_collector_config"),
    2: .standard(proto: "sampling_config"),
  ]

  fileprivate class _StorageClass {
    var _logCollectorConfig: Tensorflow_Serving_LogCollectorConfig? = nil
    var _samplingConfig: Tensorflow_Serving_SamplingConfig? = nil

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _logCollectorConfig = source._logCollectorConfig
      _samplingConfig = source._samplingConfig
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public func _protobuf_generated_isEqualTo(other: Tensorflow_Serving_LoggingConfig) -> Bool {
    if _storage !== other._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((_storage, other._storage)) { (_storage, other_storage) in
        if _storage._logCollectorConfig != other_storage._logCollectorConfig {return false}
        if _storage._samplingConfig != other_storage._samplingConfig {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if unknownFields != other.unknownFields {return false}
    return true
  }
}
