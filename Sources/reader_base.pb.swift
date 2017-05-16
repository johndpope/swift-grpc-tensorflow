/*
 * DO NOT EDIT.
 *
 * Generated by the protocol buffer compiler.
 * Source: tensorflow/core/framework/reader_base.proto
 *
 */

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

/// For serializing and restoring the state of ReaderBase, see
/// reader_base.h for details.
public struct Tensorflow_ReaderBaseState: SwiftProtobuf.Message {
  public static let protoMessageName: String = _protobuf_package + ".ReaderBaseState"

  public var workStarted: Int64 = 0

  public var workFinished: Int64 = 0

  public var numRecordsProduced: Int64 = 0

  public var currentWork: Data = SwiftProtobuf.Internal.emptyData

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularInt64Field(value: &self.workStarted)
      case 2: try decoder.decodeSingularInt64Field(value: &self.workFinished)
      case 3: try decoder.decodeSingularInt64Field(value: &self.numRecordsProduced)
      case 4: try decoder.decodeSingularBytesField(value: &self.currentWork)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.workStarted != 0 {
      try visitor.visitSingularInt64Field(value: self.workStarted, fieldNumber: 1)
    }
    if self.workFinished != 0 {
      try visitor.visitSingularInt64Field(value: self.workFinished, fieldNumber: 2)
    }
    if self.numRecordsProduced != 0 {
      try visitor.visitSingularInt64Field(value: self.numRecordsProduced, fieldNumber: 3)
    }
    if !self.currentWork.isEmpty {
      try visitor.visitSingularBytesField(value: self.currentWork, fieldNumber: 4)
    }
    try unknownFields.traverse(visitor: &visitor)
  }
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "tensorflow"

extension Tensorflow_ReaderBaseState: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "work_started"),
    2: .standard(proto: "work_finished"),
    3: .standard(proto: "num_records_produced"),
    4: .standard(proto: "current_work"),
  ]

  public func _protobuf_generated_isEqualTo(other: Tensorflow_ReaderBaseState) -> Bool {
    if self.workStarted != other.workStarted {return false}
    if self.workFinished != other.workFinished {return false}
    if self.numRecordsProduced != other.numRecordsProduced {return false}
    if self.currentWork != other.currentWork {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}