// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: tensorflow/contrib/tpu/profiler/op_profile.proto
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

/// Profile is the top-level data that summarizes a program.
public struct Tensorflow_Tpu_OpProfile_Profile: SwiftProtobuf.Message {
  public static let protoMessageName: String = _protobuf_package + ".Profile"

  /// Root of a profile broken down by instruction category.
  public var byCategory: Tensorflow_Tpu_OpProfile_Node {
    get {return _storage._byCategory ?? Tensorflow_Tpu_OpProfile_Node()}
    set {_uniqueStorage()._byCategory = newValue}
  }
  /// Returns true if `byCategory` has been explicitly set.
  public var hasByCategory: Bool {return _storage._byCategory != nil}
  /// Clears the value of `byCategory`. Subsequent reads from it will return its default value.
  public mutating func clearByCategory() {_storage._byCategory = nil}

  /// Root of a profile broken down by program structure.
  public var byProgramStructure: Tensorflow_Tpu_OpProfile_Node {
    get {return _storage._byProgramStructure ?? Tensorflow_Tpu_OpProfile_Node()}
    set {_uniqueStorage()._byProgramStructure = newValue}
  }
  /// Returns true if `byProgramStructure` has been explicitly set.
  public var hasByProgramStructure: Bool {return _storage._byProgramStructure != nil}
  /// Clears the value of `byProgramStructure`. Subsequent reads from it will return its default value.
  public mutating func clearByProgramStructure() {_storage._byProgramStructure = nil}

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
        case 1: try decoder.decodeSingularMessageField(value: &_storage._byCategory)
        case 2: try decoder.decodeSingularMessageField(value: &_storage._byProgramStructure)
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
      if let v = _storage._byCategory {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
      }
      if let v = _storage._byProgramStructure {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  fileprivate var _storage = _StorageClass.defaultInstance
}

/// An entry in the profile tree. (An instruction, or set of instructions).
public struct Tensorflow_Tpu_OpProfile_Node: SwiftProtobuf.Message {
  public static let protoMessageName: String = _protobuf_package + ".Node"

  /// Semantics depend on contents.
  public var name: String {
    get {return _storage._name}
    set {_uniqueStorage()._name = newValue}
  }

  /// May be omitted e.g. for fused instructions.
  public var metrics: Tensorflow_Tpu_OpProfile_Metrics {
    get {return _storage._metrics ?? Tensorflow_Tpu_OpProfile_Metrics()}
    set {_uniqueStorage()._metrics = newValue}
  }
  /// Returns true if `metrics` has been explicitly set.
  public var hasMetrics: Bool {return _storage._metrics != nil}
  /// Clears the value of `metrics`. Subsequent reads from it will return its default value.
  public mutating func clearMetrics() {_storage._metrics = nil}

  public var children: [Tensorflow_Tpu_OpProfile_Node] {
    get {return _storage._children}
    set {_uniqueStorage()._children = newValue}
  }

  /// Details about what this node represents.
  public var contents: OneOf_Contents? {
    get {return _storage._contents}
    set {_uniqueStorage()._contents = newValue}
  }

  public var category: Tensorflow_Tpu_OpProfile_Node.InstructionCategory {
    get {
      if case .category(let v)? = _storage._contents {return v}
      return Tensorflow_Tpu_OpProfile_Node.InstructionCategory()
    }
    set {_uniqueStorage()._contents = .category(newValue)}
  }

  public var xla: Tensorflow_Tpu_OpProfile_Node.XLAInstruction {
    get {
      if case .xla(let v)? = _storage._contents {return v}
      return Tensorflow_Tpu_OpProfile_Node.XLAInstruction()
    }
    set {_uniqueStorage()._contents = .xla(newValue)}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  /// Details about what this node represents.
  public enum OneOf_Contents: Equatable {
    case category(Tensorflow_Tpu_OpProfile_Node.InstructionCategory)
    case xla(Tensorflow_Tpu_OpProfile_Node.XLAInstruction)

    public static func ==(lhs: Tensorflow_Tpu_OpProfile_Node.OneOf_Contents, rhs: Tensorflow_Tpu_OpProfile_Node.OneOf_Contents) -> Bool {
      switch (lhs, rhs) {
      case (.category(let l), .category(let r)): return l == r
      case (.xla(let l), .xla(let r)): return l == r
      default: return false
      }
    }
  }

  /// A category of XLA instructions.
  /// name is a descriptive string, like "data formatting".
  public struct InstructionCategory: SwiftProtobuf.Message {
    public static let protoMessageName: String = Tensorflow_Tpu_OpProfile_Node.protoMessageName + ".InstructionCategory"

    public var unknownFields = SwiftProtobuf.UnknownStorage()

    public init() {}

    /// Used by the decoding initializers in the SwiftProtobuf library, not generally
    /// used directly. `init(serializedData:)`, `init(jsonUTF8Data:)`, and other decoding
    /// initializers are defined in the SwiftProtobuf library. See the Message and
    /// Message+*Additions` files.
    public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
      while let _ = try decoder.nextFieldNumber() {
      }
    }

    /// Used by the encoding methods of the SwiftProtobuf library, not generally
    /// used directly. `Message.serializedData()`, `Message.jsonUTF8Data()`, and
    /// other serializer methods are defined in the SwiftProtobuf library. See the
    /// `Message` and `Message+*Additions` files.
    public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
      try unknownFields.traverse(visitor: &visitor)
    }
  }

  /// A single XLA instruction.
  /// name is the unique instruction id, like "%multiply.5".
  public struct XLAInstruction: SwiftProtobuf.Message {
    public static let protoMessageName: String = Tensorflow_Tpu_OpProfile_Node.protoMessageName + ".XLAInstruction"

    /// Opcode like %multiply
    public var op: String {
      get {return _storage._op}
      set {_uniqueStorage()._op = newValue}
    }

    /// %multiply = [shape]multiply(operand1, operand2)
    public var expression: String {
      get {return _storage._expression}
      set {_uniqueStorage()._expression = newValue}
    }

    /// Typically the TensorFlow operation name.
    public var provenance: String {
      get {return _storage._provenance}
      set {_uniqueStorage()._provenance = newValue}
    }

    public var category: String {
      get {return _storage._category}
      set {_uniqueStorage()._category = newValue}
    }

    /// Describes the physical memory layout of the instruction's primary input.
    /// e.g. for a convolution, this analyzes the image and ignores the kernel.
    public var layout: Tensorflow_Tpu_OpProfile_Node.XLAInstruction.LayoutAnalysis {
      get {return _storage._layout ?? Tensorflow_Tpu_OpProfile_Node.XLAInstruction.LayoutAnalysis()}
      set {_uniqueStorage()._layout = newValue}
    }
    /// Returns true if `layout` has been explicitly set.
    public var hasLayout: Bool {return _storage._layout != nil}
    /// Clears the value of `layout`. Subsequent reads from it will return its default value.
    public mutating func clearLayout() {_storage._layout = nil}

    public var unknownFields = SwiftProtobuf.UnknownStorage()

    public struct LayoutAnalysis: SwiftProtobuf.Message {
      public static let protoMessageName: String = Tensorflow_Tpu_OpProfile_Node.XLAInstruction.protoMessageName + ".LayoutAnalysis"

      /// The physical data layout, from most-minor to most-major dimensions.
      public var dimensions: [Tensorflow_Tpu_OpProfile_Node.XLAInstruction.LayoutAnalysis.Dimension] = []

      public var unknownFields = SwiftProtobuf.UnknownStorage()

      public struct Dimension: SwiftProtobuf.Message {
        public static let protoMessageName: String = Tensorflow_Tpu_OpProfile_Node.XLAInstruction.LayoutAnalysis.protoMessageName + ".Dimension"

        /// Size of the data in this dimension.
        public var size: Int32 = 0

        /// Data must be padded to a multiple of alignment.
        public var alignment: Int32 = 0

        /// What the dimension represents, e.g. "spatial".
        public var semantics: String = String()

        public var unknownFields = SwiftProtobuf.UnknownStorage()

        public init() {}

        /// Used by the decoding initializers in the SwiftProtobuf library, not generally
        /// used directly. `init(serializedData:)`, `init(jsonUTF8Data:)`, and other decoding
        /// initializers are defined in the SwiftProtobuf library. See the Message and
        /// Message+*Additions` files.
        public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
          while let fieldNumber = try decoder.nextFieldNumber() {
            switch fieldNumber {
            case 1: try decoder.decodeSingularInt32Field(value: &self.size)
            case 2: try decoder.decodeSingularInt32Field(value: &self.alignment)
            case 3: try decoder.decodeSingularStringField(value: &self.semantics)
            default: break
            }
          }
        }

        /// Used by the encoding methods of the SwiftProtobuf library, not generally
        /// used directly. `Message.serializedData()`, `Message.jsonUTF8Data()`, and
        /// other serializer methods are defined in the SwiftProtobuf library. See the
        /// `Message` and `Message+*Additions` files.
        public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
          if self.size != 0 {
            try visitor.visitSingularInt32Field(value: self.size, fieldNumber: 1)
          }
          if self.alignment != 0 {
            try visitor.visitSingularInt32Field(value: self.alignment, fieldNumber: 2)
          }
          if !self.semantics.isEmpty {
            try visitor.visitSingularStringField(value: self.semantics, fieldNumber: 3)
          }
          try unknownFields.traverse(visitor: &visitor)
        }
      }

      public init() {}

      /// Used by the decoding initializers in the SwiftProtobuf library, not generally
      /// used directly. `init(serializedData:)`, `init(jsonUTF8Data:)`, and other decoding
      /// initializers are defined in the SwiftProtobuf library. See the Message and
      /// Message+*Additions` files.
      public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
        while let fieldNumber = try decoder.nextFieldNumber() {
          switch fieldNumber {
          case 1: try decoder.decodeRepeatedMessageField(value: &self.dimensions)
          default: break
          }
        }
      }

      /// Used by the encoding methods of the SwiftProtobuf library, not generally
      /// used directly. `Message.serializedData()`, `Message.jsonUTF8Data()`, and
      /// other serializer methods are defined in the SwiftProtobuf library. See the
      /// `Message` and `Message+*Additions` files.
      public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
        if !self.dimensions.isEmpty {
          try visitor.visitRepeatedMessageField(value: self.dimensions, fieldNumber: 1)
        }
        try unknownFields.traverse(visitor: &visitor)
      }
    }

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
          case 1: try decoder.decodeSingularStringField(value: &_storage._op)
          case 2: try decoder.decodeSingularStringField(value: &_storage._expression)
          case 3: try decoder.decodeSingularStringField(value: &_storage._provenance)
          case 4: try decoder.decodeSingularStringField(value: &_storage._category)
          case 5: try decoder.decodeSingularMessageField(value: &_storage._layout)
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
        if !_storage._op.isEmpty {
          try visitor.visitSingularStringField(value: _storage._op, fieldNumber: 1)
        }
        if !_storage._expression.isEmpty {
          try visitor.visitSingularStringField(value: _storage._expression, fieldNumber: 2)
        }
        if !_storage._provenance.isEmpty {
          try visitor.visitSingularStringField(value: _storage._provenance, fieldNumber: 3)
        }
        if !_storage._category.isEmpty {
          try visitor.visitSingularStringField(value: _storage._category, fieldNumber: 4)
        }
        if let v = _storage._layout {
          try visitor.visitSingularMessageField(value: v, fieldNumber: 5)
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
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        switch fieldNumber {
        case 1: try decoder.decodeSingularStringField(value: &_storage._name)
        case 2: try decoder.decodeSingularMessageField(value: &_storage._metrics)
        case 3: try decoder.decodeRepeatedMessageField(value: &_storage._children)
        case 4:
          var v: Tensorflow_Tpu_OpProfile_Node.InstructionCategory?
          if let current = _storage._contents {
            try decoder.handleConflictingOneOf()
            if case .category(let m) = current {v = m}
          }
          try decoder.decodeSingularMessageField(value: &v)
          if let v = v {_storage._contents = .category(v)}
        case 5:
          var v: Tensorflow_Tpu_OpProfile_Node.XLAInstruction?
          if let current = _storage._contents {
            try decoder.handleConflictingOneOf()
            if case .xla(let m) = current {v = m}
          }
          try decoder.decodeSingularMessageField(value: &v)
          if let v = v {_storage._contents = .xla(v)}
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
      if !_storage._name.isEmpty {
        try visitor.visitSingularStringField(value: _storage._name, fieldNumber: 1)
      }
      if let v = _storage._metrics {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
      }
      if !_storage._children.isEmpty {
        try visitor.visitRepeatedMessageField(value: _storage._children, fieldNumber: 3)
      }
      switch _storage._contents {
      case .category(let v)?:
        try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
      case .xla(let v)?:
        try visitor.visitSingularMessageField(value: v, fieldNumber: 5)
      case nil: break
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  fileprivate var _storage = _StorageClass.defaultInstance
}

/// Measurements of an operation (or aggregated set of operations).
/// Metrics are always "total" rather than "self".
public struct Tensorflow_Tpu_OpProfile_Metrics: SwiftProtobuf.Message {
  public static let protoMessageName: String = _protobuf_package + ".Metrics"

  /// Core-time taken by this operation, as a fraction of all operations.
  public var time: Double = 0

  /// Floating point computations performed by this operation, as a fraction of
  /// peak core FLOPS * program time. This representation has useful properties:
  ///  - it is proportional to the number of floating point operations performed
  ///  - utilization is flops/time
  ///  - wasted potential flops is proportional to time - flops
  ///  - it does not reveal the peak core FLOPS of the hardware
  public var flops: Double = 0

  /// Elapsed core-time in picoseconds.
  public var rawTime: Double = 0

  /// Total floating-point operations performed.
  public var rawFlops: Double = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  /// Used by the decoding initializers in the SwiftProtobuf library, not generally
  /// used directly. `init(serializedData:)`, `init(jsonUTF8Data:)`, and other decoding
  /// initializers are defined in the SwiftProtobuf library. See the Message and
  /// Message+*Additions` files.
  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularDoubleField(value: &self.time)
      case 2: try decoder.decodeSingularDoubleField(value: &self.flops)
      case 11: try decoder.decodeSingularDoubleField(value: &self.rawTime)
      case 12: try decoder.decodeSingularDoubleField(value: &self.rawFlops)
      default: break
      }
    }
  }

  /// Used by the encoding methods of the SwiftProtobuf library, not generally
  /// used directly. `Message.serializedData()`, `Message.jsonUTF8Data()`, and
  /// other serializer methods are defined in the SwiftProtobuf library. See the
  /// `Message` and `Message+*Additions` files.
  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.time != 0 {
      try visitor.visitSingularDoubleField(value: self.time, fieldNumber: 1)
    }
    if self.flops != 0 {
      try visitor.visitSingularDoubleField(value: self.flops, fieldNumber: 2)
    }
    if self.rawTime != 0 {
      try visitor.visitSingularDoubleField(value: self.rawTime, fieldNumber: 11)
    }
    if self.rawFlops != 0 {
      try visitor.visitSingularDoubleField(value: self.rawFlops, fieldNumber: 12)
    }
    try unknownFields.traverse(visitor: &visitor)
  }
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "tensorflow.tpu.op_profile"

extension Tensorflow_Tpu_OpProfile_Profile: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "by_category"),
    2: .standard(proto: "by_program_structure"),
  ]

  fileprivate class _StorageClass {
    var _byCategory: Tensorflow_Tpu_OpProfile_Node? = nil
    var _byProgramStructure: Tensorflow_Tpu_OpProfile_Node? = nil

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _byCategory = source._byCategory
      _byProgramStructure = source._byProgramStructure
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public func _protobuf_generated_isEqualTo(other: Tensorflow_Tpu_OpProfile_Profile) -> Bool {
    if _storage !== other._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((_storage, other._storage)) { (_storage, other_storage) in
        if _storage._byCategory != other_storage._byCategory {return false}
        if _storage._byProgramStructure != other_storage._byProgramStructure {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Tensorflow_Tpu_OpProfile_Node: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "name"),
    2: .same(proto: "metrics"),
    3: .same(proto: "children"),
    4: .same(proto: "category"),
    5: .same(proto: "xla"),
  ]

  fileprivate class _StorageClass {
    var _name: String = String()
    var _metrics: Tensorflow_Tpu_OpProfile_Metrics? = nil
    var _children: [Tensorflow_Tpu_OpProfile_Node] = []
    var _contents: Tensorflow_Tpu_OpProfile_Node.OneOf_Contents?

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _name = source._name
      _metrics = source._metrics
      _children = source._children
      _contents = source._contents
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public func _protobuf_generated_isEqualTo(other: Tensorflow_Tpu_OpProfile_Node) -> Bool {
    if _storage !== other._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((_storage, other._storage)) { (_storage, other_storage) in
        if _storage._name != other_storage._name {return false}
        if _storage._metrics != other_storage._metrics {return false}
        if _storage._children != other_storage._children {return false}
        if _storage._contents != other_storage._contents {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Tensorflow_Tpu_OpProfile_Node.InstructionCategory: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap = SwiftProtobuf._NameMap()

  public func _protobuf_generated_isEqualTo(other: Tensorflow_Tpu_OpProfile_Node.InstructionCategory) -> Bool {
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Tensorflow_Tpu_OpProfile_Node.XLAInstruction: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "op"),
    2: .same(proto: "expression"),
    3: .same(proto: "provenance"),
    4: .same(proto: "category"),
    5: .same(proto: "layout"),
  ]

  fileprivate class _StorageClass {
    var _op: String = String()
    var _expression: String = String()
    var _provenance: String = String()
    var _category: String = String()
    var _layout: Tensorflow_Tpu_OpProfile_Node.XLAInstruction.LayoutAnalysis? = nil

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _op = source._op
      _expression = source._expression
      _provenance = source._provenance
      _category = source._category
      _layout = source._layout
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public func _protobuf_generated_isEqualTo(other: Tensorflow_Tpu_OpProfile_Node.XLAInstruction) -> Bool {
    if _storage !== other._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((_storage, other._storage)) { (_storage, other_storage) in
        if _storage._op != other_storage._op {return false}
        if _storage._expression != other_storage._expression {return false}
        if _storage._provenance != other_storage._provenance {return false}
        if _storage._category != other_storage._category {return false}
        if _storage._layout != other_storage._layout {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Tensorflow_Tpu_OpProfile_Node.XLAInstruction.LayoutAnalysis: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "dimensions"),
  ]

  public func _protobuf_generated_isEqualTo(other: Tensorflow_Tpu_OpProfile_Node.XLAInstruction.LayoutAnalysis) -> Bool {
    if self.dimensions != other.dimensions {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Tensorflow_Tpu_OpProfile_Node.XLAInstruction.LayoutAnalysis.Dimension: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "size"),
    2: .same(proto: "alignment"),
    3: .same(proto: "semantics"),
  ]

  public func _protobuf_generated_isEqualTo(other: Tensorflow_Tpu_OpProfile_Node.XLAInstruction.LayoutAnalysis.Dimension) -> Bool {
    if self.size != other.size {return false}
    if self.alignment != other.alignment {return false}
    if self.semantics != other.semantics {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Tensorflow_Tpu_OpProfile_Metrics: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "time"),
    2: .same(proto: "flops"),
    11: .standard(proto: "raw_time"),
    12: .standard(proto: "raw_flops"),
  ]

  public func _protobuf_generated_isEqualTo(other: Tensorflow_Tpu_OpProfile_Metrics) -> Bool {
    if self.time != other.time {return false}
    if self.flops != other.flops {return false}
    if self.rawTime != other.rawTime {return false}
    if self.rawFlops != other.rawFlops {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}