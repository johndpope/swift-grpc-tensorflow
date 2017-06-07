// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: tensorflow_serving/resources/resources.proto
//
// For information on using the generated types, please see the documenation:
//   https://github.com/apple/swift-protobuf/

// Representations for resources used by servables, and available in a system.
//
// Each of the string-typed values are free-form, so that they can be extended
// by third parties. However we strongly recommend using the values defined in
// resource_values.h when possible, for standardization.

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

/// One kind of resource on one device (or type of device).
public struct Tensorflow_Serving_Resource: SwiftProtobuf.Message {
  public static let protoMessageName: String = _protobuf_package + ".Resource"

  /// The type of device on which the resource resides, e.g. CPU or GPU.
  public var device: String {
    get {return _storage._device}
    set {_uniqueStorage()._device = newValue}
  }

  /// A specific instance of the device of type 'device' to which the resources
  /// are bound (instances are assumed to be numbered 0, 1, ...).
  ///
  /// When representing the resources required by a servable that has yet to be
  /// loaded, this field is optional. If not set, it denotes that the servable's
  /// resources are not (yet) bound to a specific instance.
  public var deviceInstance: SwiftProtobuf.Google_Protobuf_UInt32Value {
    get {return _storage._deviceInstance ?? SwiftProtobuf.Google_Protobuf_UInt32Value()}
    set {_uniqueStorage()._deviceInstance = newValue}
  }
  /// Returns true if `deviceInstance` has been explicitly set.
  public var hasDeviceInstance: Bool {return _storage._deviceInstance != nil}
  /// Clears the value of `deviceInstance`. Subsequent reads from it will return its default value.
  public mutating func clearDeviceInstance() {_storage._deviceInstance = nil}

  /// The kind of resource on the device (instance), e.g. RAM or compute share.
  ///
  /// A given type of resource should have a standard unit that represents the
  /// smallest useful quantization. We strongly recommend including the unit
  /// (e.g. bytes or millicores) in this string, as in "ram_bytes".
  public var kind: String {
    get {return _storage._kind}
    set {_uniqueStorage()._kind = newValue}
  }

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
        case 1: try decoder.decodeSingularStringField(value: &_storage._device)
        case 2: try decoder.decodeSingularMessageField(value: &_storage._deviceInstance)
        case 3: try decoder.decodeSingularStringField(value: &_storage._kind)
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
      if !_storage._device.isEmpty {
        try visitor.visitSingularStringField(value: _storage._device, fieldNumber: 1)
      }
      if let v = _storage._deviceInstance {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
      }
      if !_storage._kind.isEmpty {
        try visitor.visitSingularStringField(value: _storage._kind, fieldNumber: 3)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  fileprivate var _storage = _StorageClass.defaultInstance
}

/// An allocation of one or more kinds of resources, along with the quantity of
/// each. Used to denote the resources that a servable (or collection of
/// servables) will use or is currently using. Also used to denote resources
/// available to the serving system for loading more servables.
public struct Tensorflow_Serving_ResourceAllocation: SwiftProtobuf.Message {
  public static let protoMessageName: String = _protobuf_package + ".ResourceAllocation"

  public var resourceQuantities: [Tensorflow_Serving_ResourceAllocation.Entry] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  /// A collection of resources, each with a quantity. Treated as a resource->
  /// quantity map, i.e. no resource can repeat and the order is immaterial.
  public struct Entry: SwiftProtobuf.Message {
    public static let protoMessageName: String = Tensorflow_Serving_ResourceAllocation.protoMessageName + ".Entry"

    public var resource: Tensorflow_Serving_Resource {
      get {return _storage._resource ?? Tensorflow_Serving_Resource()}
      set {_uniqueStorage()._resource = newValue}
    }
    /// Returns true if `resource` has been explicitly set.
    public var hasResource: Bool {return _storage._resource != nil}
    /// Clears the value of `resource`. Subsequent reads from it will return its default value.
    public mutating func clearResource() {_storage._resource = nil}

    public var quantity: UInt64 {
      get {return _storage._quantity}
      set {_uniqueStorage()._quantity = newValue}
    }

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
          case 1: try decoder.decodeSingularMessageField(value: &_storage._resource)
          case 2: try decoder.decodeSingularUInt64Field(value: &_storage._quantity)
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
        if let v = _storage._resource {
          try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
        }
        if _storage._quantity != 0 {
          try visitor.visitSingularUInt64Field(value: _storage._quantity, fieldNumber: 2)
        }
      }
      try unknownFields.traverse(visitor: &visitor)
    }

    fileprivate var _storage = _StorageClass.defaultInstance
  }

  public init() {}

  /// Used by the decoding initializers in the SwiftProtobuf library, not generally
  /// used directly. `init(serializedData:)`, `init(jsonUTF8Data:)`, and other decoding
  /// initializers are defined in the SwiftProtobuf library. See the Message and
  /// Message+*Additions` files.
  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeRepeatedMessageField(value: &self.resourceQuantities)
      default: break
      }
    }
  }

  /// Used by the encoding methods of the SwiftProtobuf library, not generally
  /// used directly. `Message.serializedData()`, `Message.jsonUTF8Data()`, and
  /// other serializer methods are defined in the SwiftProtobuf library. See the
  /// `Message` and `Message+*Additions` files.
  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.resourceQuantities.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.resourceQuantities, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "tensorflow.serving"

extension Tensorflow_Serving_Resource: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "device"),
    2: .standard(proto: "device_instance"),
    3: .same(proto: "kind"),
  ]

  fileprivate class _StorageClass {
    var _device: String = String()
    var _deviceInstance: SwiftProtobuf.Google_Protobuf_UInt32Value? = nil
    var _kind: String = String()

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _device = source._device
      _deviceInstance = source._deviceInstance
      _kind = source._kind
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public func _protobuf_generated_isEqualTo(other: Tensorflow_Serving_Resource) -> Bool {
    if _storage !== other._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((_storage, other._storage)) { (_storage, other_storage) in
        if _storage._device != other_storage._device {return false}
        if _storage._deviceInstance != other_storage._deviceInstance {return false}
        if _storage._kind != other_storage._kind {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Tensorflow_Serving_ResourceAllocation: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "resource_quantities"),
  ]

  public func _protobuf_generated_isEqualTo(other: Tensorflow_Serving_ResourceAllocation) -> Bool {
    if self.resourceQuantities != other.resourceQuantities {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Tensorflow_Serving_ResourceAllocation.Entry: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "resource"),
    2: .same(proto: "quantity"),
  ]

  fileprivate class _StorageClass {
    var _resource: Tensorflow_Serving_Resource? = nil
    var _quantity: UInt64 = 0

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _resource = source._resource
      _quantity = source._quantity
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public func _protobuf_generated_isEqualTo(other: Tensorflow_Serving_ResourceAllocation.Entry) -> Bool {
    if _storage !== other._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((_storage, other._storage)) { (_storage, other_storage) in
        if _storage._resource != other_storage._resource {return false}
        if _storage._quantity != other_storage._quantity {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if unknownFields != other.unknownFields {return false}
    return true
  }
}
