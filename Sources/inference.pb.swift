// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: tensorflow_serving/apis/inference.proto
//
// For information on using the generated types, please see the documenation:
//   https://github.com/apple/swift-protobuf/

// This file contains messages for various machine learning inferences
// such as regression and classification.
//
// In many applications more than one type of inference is desired for a single
// input.  For example, given meteorologic data an application may want to
// perform a classification to determine if we should expect rain, snow or sun
// and also perform a regression to predict the temperature.
// Sharing the single input data between two inference tasks can be accomplished
// using MultiInferenceRequest and MultiInferenceResponse.

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

/// Inference request such as classification, regression, etc...
public struct Tensorflow_Serving_InferenceTask: SwiftProtobuf.Message {
  public static let protoMessageName: String = _protobuf_package + ".InferenceTask"

  public var modelSpec: Tensorflow_Serving_ModelSpec {
    get {return _storage._modelSpec ?? Tensorflow_Serving_ModelSpec()}
    set {_uniqueStorage()._modelSpec = newValue}
  }
  /// Returns true if `modelSpec` has been explicitly set.
  public var hasModelSpec: Bool {return _storage._modelSpec != nil}
  /// Clears the value of `modelSpec`. Subsequent reads from it will return its default value.
  public mutating func clearModelSpec() {_storage._modelSpec = nil}

  /// Signature's method_name. Should be one of the method names defined in
  /// third_party/tensorflow/python/saved_model/signature_constants.py.
  /// e.g. "tensorflow/serving/classify".
  public var methodName: String {
    get {return _storage._methodName}
    set {_uniqueStorage()._methodName = newValue}
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
        case 1: try decoder.decodeSingularMessageField(value: &_storage._modelSpec)
        case 2: try decoder.decodeSingularStringField(value: &_storage._methodName)
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
      if let v = _storage._modelSpec {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
      }
      if !_storage._methodName.isEmpty {
        try visitor.visitSingularStringField(value: _storage._methodName, fieldNumber: 2)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  fileprivate var _storage = _StorageClass.defaultInstance
}

/// Inference result, matches the type of request or is an error.
public struct Tensorflow_Serving_InferenceResult: SwiftProtobuf.Message {
  public static let protoMessageName: String = _protobuf_package + ".InferenceResult"

  public var modelSpec: Tensorflow_Serving_ModelSpec {
    get {return _storage._modelSpec ?? Tensorflow_Serving_ModelSpec()}
    set {_uniqueStorage()._modelSpec = newValue}
  }
  /// Returns true if `modelSpec` has been explicitly set.
  public var hasModelSpec: Bool {return _storage._modelSpec != nil}
  /// Clears the value of `modelSpec`. Subsequent reads from it will return its default value.
  public mutating func clearModelSpec() {_storage._modelSpec = nil}

  public var result: OneOf_Result? {
    get {return _storage._result}
    set {_uniqueStorage()._result = newValue}
  }

  public var classificationResult: Tensorflow_Serving_ClassificationResult {
    get {
      if case .classificationResult(let v)? = _storage._result {return v}
      return Tensorflow_Serving_ClassificationResult()
    }
    set {_uniqueStorage()._result = .classificationResult(newValue)}
  }

  public var regressionResult: Tensorflow_Serving_RegressionResult {
    get {
      if case .regressionResult(let v)? = _storage._result {return v}
      return Tensorflow_Serving_RegressionResult()
    }
    set {_uniqueStorage()._result = .regressionResult(newValue)}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public enum OneOf_Result: Equatable {
    case classificationResult(Tensorflow_Serving_ClassificationResult)
    case regressionResult(Tensorflow_Serving_RegressionResult)

    public static func ==(lhs: Tensorflow_Serving_InferenceResult.OneOf_Result, rhs: Tensorflow_Serving_InferenceResult.OneOf_Result) -> Bool {
      switch (lhs, rhs) {
      case (.classificationResult(let l), .classificationResult(let r)): return l == r
      case (.regressionResult(let l), .regressionResult(let r)): return l == r
      default: return false
      }
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
        case 1: try decoder.decodeSingularMessageField(value: &_storage._modelSpec)
        case 2:
          var v: Tensorflow_Serving_ClassificationResult?
          if let current = _storage._result {
            try decoder.handleConflictingOneOf()
            if case .classificationResult(let m) = current {v = m}
          }
          try decoder.decodeSingularMessageField(value: &v)
          if let v = v {_storage._result = .classificationResult(v)}
        case 3:
          var v: Tensorflow_Serving_RegressionResult?
          if let current = _storage._result {
            try decoder.handleConflictingOneOf()
            if case .regressionResult(let m) = current {v = m}
          }
          try decoder.decodeSingularMessageField(value: &v)
          if let v = v {_storage._result = .regressionResult(v)}
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
      if let v = _storage._modelSpec {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
      }
      switch _storage._result {
      case .classificationResult(let v)?:
        try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
      case .regressionResult(let v)?:
        try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
      case nil: break
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  fileprivate var _storage = _StorageClass.defaultInstance
}

/// Inference request containing one or more requests.
public struct Tensorflow_Serving_MultiInferenceRequest: SwiftProtobuf.Message {
  public static let protoMessageName: String = _protobuf_package + ".MultiInferenceRequest"

  /// Inference tasks.
  public var tasks: [Tensorflow_Serving_InferenceTask] {
    get {return _storage._tasks}
    set {_uniqueStorage()._tasks = newValue}
  }

  /// Input data.
  public var input: Tensorflow_Serving_Input {
    get {return _storage._input ?? Tensorflow_Serving_Input()}
    set {_uniqueStorage()._input = newValue}
  }
  /// Returns true if `input` has been explicitly set.
  public var hasInput: Bool {return _storage._input != nil}
  /// Clears the value of `input`. Subsequent reads from it will return its default value.
  public mutating func clearInput() {_storage._input = nil}

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
        case 1: try decoder.decodeRepeatedMessageField(value: &_storage._tasks)
        case 2: try decoder.decodeSingularMessageField(value: &_storage._input)
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
      if !_storage._tasks.isEmpty {
        try visitor.visitRepeatedMessageField(value: _storage._tasks, fieldNumber: 1)
      }
      if let v = _storage._input {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  fileprivate var _storage = _StorageClass.defaultInstance
}

/// Inference request containing one or more responses.
public struct Tensorflow_Serving_MultiInferenceResponse: SwiftProtobuf.Message {
  public static let protoMessageName: String = _protobuf_package + ".MultiInferenceResponse"

  /// List of results; one for each InferenceTask in the request, returned in the
  /// same order as the request.
  public var results: [Tensorflow_Serving_InferenceResult] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  /// Used by the decoding initializers in the SwiftProtobuf library, not generally
  /// used directly. `init(serializedData:)`, `init(jsonUTF8Data:)`, and other decoding
  /// initializers are defined in the SwiftProtobuf library. See the Message and
  /// Message+*Additions` files.
  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeRepeatedMessageField(value: &self.results)
      default: break
      }
    }
  }

  /// Used by the encoding methods of the SwiftProtobuf library, not generally
  /// used directly. `Message.serializedData()`, `Message.jsonUTF8Data()`, and
  /// other serializer methods are defined in the SwiftProtobuf library. See the
  /// `Message` and `Message+*Additions` files.
  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.results.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.results, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "tensorflow.serving"

extension Tensorflow_Serving_InferenceTask: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "model_spec"),
    2: .standard(proto: "method_name"),
  ]

  fileprivate class _StorageClass {
    var _modelSpec: Tensorflow_Serving_ModelSpec? = nil
    var _methodName: String = String()

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _modelSpec = source._modelSpec
      _methodName = source._methodName
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public func _protobuf_generated_isEqualTo(other: Tensorflow_Serving_InferenceTask) -> Bool {
    if _storage !== other._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((_storage, other._storage)) { (_storage, other_storage) in
        if _storage._modelSpec != other_storage._modelSpec {return false}
        if _storage._methodName != other_storage._methodName {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Tensorflow_Serving_InferenceResult: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "model_spec"),
    2: .standard(proto: "classification_result"),
    3: .standard(proto: "regression_result"),
  ]

  fileprivate class _StorageClass {
    var _modelSpec: Tensorflow_Serving_ModelSpec? = nil
    var _result: Tensorflow_Serving_InferenceResult.OneOf_Result?

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _modelSpec = source._modelSpec
      _result = source._result
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public func _protobuf_generated_isEqualTo(other: Tensorflow_Serving_InferenceResult) -> Bool {
    if _storage !== other._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((_storage, other._storage)) { (_storage, other_storage) in
        if _storage._modelSpec != other_storage._modelSpec {return false}
        if _storage._result != other_storage._result {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Tensorflow_Serving_MultiInferenceRequest: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "tasks"),
    2: .same(proto: "input"),
  ]

  fileprivate class _StorageClass {
    var _tasks: [Tensorflow_Serving_InferenceTask] = []
    var _input: Tensorflow_Serving_Input? = nil

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _tasks = source._tasks
      _input = source._input
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public func _protobuf_generated_isEqualTo(other: Tensorflow_Serving_MultiInferenceRequest) -> Bool {
    if _storage !== other._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((_storage, other._storage)) { (_storage, other_storage) in
        if _storage._tasks != other_storage._tasks {return false}
        if _storage._input != other_storage._input {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Tensorflow_Serving_MultiInferenceResponse: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "results"),
  ]

  public func _protobuf_generated_isEqualTo(other: Tensorflow_Serving_MultiInferenceResponse) -> Bool {
    if self.results != other.results {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}
