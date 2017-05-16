/*
 * DO NOT EDIT.
 *
 * Generated by the protocol buffer compiler.
 * Source: tensorflow/core/framework/tensor_shape.proto
 *
 */

// Protocol buffer representing the shape of tensors.

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that your are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _1: SwiftProtobuf.ProtobufAPIVersion_1 {}
  typealias Version = _1
}

/// Dimensions of a tensor.
public struct Tensorflow_TensorShapeProto: SwiftProtobuf.Message {
  public static let protoMessageName: String = _protobuf_package + ".TensorShapeProto"

  /// Dimensions of the tensor, such as {"input", 30}, {"output", 40}
  /// for a 30 x 40 2D tensor.  If an entry has size -1, this
  /// corresponds to a dimension of unknown size. The names are
  /// optional.
  ///
  /// The order of entries in "dim" matters: It indicates the layout of the
  /// values in the tensor in-memory representation.
  ///
  /// The first entry in "dim" is the outermost dimension used to layout the
  /// values, the last entry is the innermost dimension.  This matches the
  /// in-memory layout of RowMajor Eigen tensors.
  ///
  /// If "dim.size()" > 0, "unknown_rank" must be false.
  public var dim: [Tensorflow_TensorShapeProto.Dim] = []

  /// If true, the number of dimensions in the shape is unknown.
  ///
  /// If true, "dim.size()" must be 0.
  public var unknownRank: Bool = false

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  /// One dimension of the tensor.
  public struct Dim: SwiftProtobuf.Message {
    public static let protoMessageName: String = Tensorflow_TensorShapeProto.protoMessageName + ".Dim"

    /// Size of the tensor in that dimension.
    /// This value must be >= -1, but values of -1 are reserved for "unknown"
    /// shapes (values of -1 mean "unknown" dimension).  Certain wrappers
    /// that work with TensorShapeProto may fail at runtime when deserializing
    /// a TensorShapeProto containing a dim value of -1.
    public var size: Int64 = 0

    /// Optional name of the tensor dimension.
    public var name: String = String()

    public var unknownFields = SwiftProtobuf.UnknownStorage()

    public init() {}

    public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
      while let fieldNumber = try decoder.nextFieldNumber() {
        switch fieldNumber {
        case 1: try decoder.decodeSingularInt64Field(value: &self.size)
        case 2: try decoder.decodeSingularStringField(value: &self.name)
        default: break
        }
      }
    }

    public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
      if self.size != 0 {
        try visitor.visitSingularInt64Field(value: self.size, fieldNumber: 1)
      }
      if !self.name.isEmpty {
        try visitor.visitSingularStringField(value: self.name, fieldNumber: 2)
      }
      try unknownFields.traverse(visitor: &visitor)
    }
  }

  public init() {}

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 2: try decoder.decodeRepeatedMessageField(value: &self.dim)
      case 3: try decoder.decodeSingularBoolField(value: &self.unknownRank)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.dim.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.dim, fieldNumber: 2)
    }
    if self.unknownRank != false {
      try visitor.visitSingularBoolField(value: self.unknownRank, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "tensorflow"

extension Tensorflow_TensorShapeProto: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    2: .same(proto: "dim"),
    3: .standard(proto: "unknown_rank"),
  ]

  public func _protobuf_generated_isEqualTo(other: Tensorflow_TensorShapeProto) -> Bool {
    if self.dim != other.dim {return false}
    if self.unknownRank != other.unknownRank {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Tensorflow_TensorShapeProto.Dim: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "size"),
    2: .same(proto: "name"),
  ]

  public func _protobuf_generated_isEqualTo(other: Tensorflow_TensorShapeProto.Dim) -> Bool {
    if self.size != other.size {return false}
    if self.name != other.name {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}
