/*
 * DO NOT EDIT.
 *
 * Generated by the protocol buffer compiler.
 * Source: tensorflow/tensorboard/plugins/projector/projector_config.proto
 *
 */

// Copyright 2016 The TensorFlow Authors. All Rights Reserved.
//
//Licensed under the Apache License, Version 2.0 (the "License");
//you may not use this file except in compliance with the License.
//You may obtain a copy of the License at
//
//http://www.apache.org/licenses/LICENSE-2.0
//
//Unless required by applicable law or agreed to in writing, software
//distributed under the License is distributed on an "AS IS" BASIS,
//WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//See the License for the specific language governing permissions and
//limitations under the License.
//==============================================================================

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

public struct Tensorflow_SpriteMetadata: SwiftProtobuf.Message {
  public static let protoMessageName: String = _protobuf_package + ".SpriteMetadata"

  public var imagePath: String = String()

  /// [width, height] of a single image in the sprite.
  public var singleImageDim: [UInt32] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.imagePath)
      case 2: try decoder.decodeRepeatedUInt32Field(value: &self.singleImageDim)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.imagePath.isEmpty {
      try visitor.visitSingularStringField(value: self.imagePath, fieldNumber: 1)
    }
    if !self.singleImageDim.isEmpty {
      try visitor.visitPackedUInt32Field(value: self.singleImageDim, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }
}

public struct Tensorflow_EmbeddingInfo: SwiftProtobuf.Message {
  public static let protoMessageName: String = _protobuf_package + ".EmbeddingInfo"

  public var tensorName: String {
    get {return _storage._tensorName}
    set {_uniqueStorage()._tensorName = newValue}
  }

  public var metadataPath: String {
    get {return _storage._metadataPath}
    set {_uniqueStorage()._metadataPath = newValue}
  }

  public var bookmarksPath: String {
    get {return _storage._bookmarksPath}
    set {_uniqueStorage()._bookmarksPath = newValue}
  }

  /// Shape of the 2D tensor [N x D]. If missing, it will be inferred from the
  /// model checkpoint.
  public var tensorShape: [UInt32] {
    get {return _storage._tensorShape}
    set {_uniqueStorage()._tensorShape = newValue}
  }

  public var sprite: Tensorflow_SpriteMetadata {
    get {return _storage._sprite ?? Tensorflow_SpriteMetadata()}
    set {_uniqueStorage()._sprite = newValue}
  }
  public var hasSprite: Bool {
    return _storage._sprite != nil
  }
  public mutating func clearSprite() {
    _storage._sprite = nil
  }

  /// Path to the TSV file holding the tensor values. If missing, the tensor
  /// is assumed to be stored in the model checkpoint.
  public var tensorPath: String {
    get {return _storage._tensorPath}
    set {_uniqueStorage()._tensorPath = newValue}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        switch fieldNumber {
        case 1: try decoder.decodeSingularStringField(value: &_storage._tensorName)
        case 2: try decoder.decodeSingularStringField(value: &_storage._metadataPath)
        case 3: try decoder.decodeSingularStringField(value: &_storage._bookmarksPath)
        case 4: try decoder.decodeRepeatedUInt32Field(value: &_storage._tensorShape)
        case 5: try decoder.decodeSingularMessageField(value: &_storage._sprite)
        case 6: try decoder.decodeSingularStringField(value: &_storage._tensorPath)
        default: break
        }
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if !_storage._tensorName.isEmpty {
        try visitor.visitSingularStringField(value: _storage._tensorName, fieldNumber: 1)
      }
      if !_storage._metadataPath.isEmpty {
        try visitor.visitSingularStringField(value: _storage._metadataPath, fieldNumber: 2)
      }
      if !_storage._bookmarksPath.isEmpty {
        try visitor.visitSingularStringField(value: _storage._bookmarksPath, fieldNumber: 3)
      }
      if !_storage._tensorShape.isEmpty {
        try visitor.visitPackedUInt32Field(value: _storage._tensorShape, fieldNumber: 4)
      }
      if let v = _storage._sprite {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 5)
      }
      if !_storage._tensorPath.isEmpty {
        try visitor.visitSingularStringField(value: _storage._tensorPath, fieldNumber: 6)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  fileprivate var _storage = _StorageClass()
}

public struct Tensorflow_ProjectorConfig: SwiftProtobuf.Message {
  public static let protoMessageName: String = _protobuf_package + ".ProjectorConfig"

  /// Path to the checkpoint file. Use either this or model_checkpoint_dir.
  public var modelCheckpointPath: String = String()

  public var embeddings: [Tensorflow_EmbeddingInfo] = []

  /// Path to the checkpoint directory. The directory will be scanned for the
  /// latest checkpoint file.
  public var modelCheckpointDir: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.modelCheckpointPath)
      case 2: try decoder.decodeRepeatedMessageField(value: &self.embeddings)
      case 3: try decoder.decodeSingularStringField(value: &self.modelCheckpointDir)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.modelCheckpointPath.isEmpty {
      try visitor.visitSingularStringField(value: self.modelCheckpointPath, fieldNumber: 1)
    }
    if !self.embeddings.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.embeddings, fieldNumber: 2)
    }
    if !self.modelCheckpointDir.isEmpty {
      try visitor.visitSingularStringField(value: self.modelCheckpointDir, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "tensorflow"

extension Tensorflow_SpriteMetadata: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "image_path"),
    2: .standard(proto: "single_image_dim"),
  ]

  public func _protobuf_generated_isEqualTo(other: Tensorflow_SpriteMetadata) -> Bool {
    if self.imagePath != other.imagePath {return false}
    if self.singleImageDim != other.singleImageDim {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Tensorflow_EmbeddingInfo: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "tensor_name"),
    2: .standard(proto: "metadata_path"),
    3: .standard(proto: "bookmarks_path"),
    4: .standard(proto: "tensor_shape"),
    5: .same(proto: "sprite"),
    6: .standard(proto: "tensor_path"),
  ]

  fileprivate class _StorageClass {
    var _tensorName: String = String()
    var _metadataPath: String = String()
    var _bookmarksPath: String = String()
    var _tensorShape: [UInt32] = []
    var _sprite: Tensorflow_SpriteMetadata? = nil
    var _tensorPath: String = String()

    init() {}

    init(copying source: _StorageClass) {
      _tensorName = source._tensorName
      _metadataPath = source._metadataPath
      _bookmarksPath = source._bookmarksPath
      _tensorShape = source._tensorShape
      _sprite = source._sprite
      _tensorPath = source._tensorPath
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public func _protobuf_generated_isEqualTo(other: Tensorflow_EmbeddingInfo) -> Bool {
    if _storage !== other._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((_storage, other._storage)) { (_storage, other_storage) in
        if _storage._tensorName != other_storage._tensorName {return false}
        if _storage._metadataPath != other_storage._metadataPath {return false}
        if _storage._bookmarksPath != other_storage._bookmarksPath {return false}
        if _storage._tensorShape != other_storage._tensorShape {return false}
        if _storage._sprite != other_storage._sprite {return false}
        if _storage._tensorPath != other_storage._tensorPath {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Tensorflow_ProjectorConfig: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "model_checkpoint_path"),
    2: .same(proto: "embeddings"),
    3: .standard(proto: "model_checkpoint_dir"),
  ]

  public func _protobuf_generated_isEqualTo(other: Tensorflow_ProjectorConfig) -> Bool {
    if self.modelCheckpointPath != other.modelCheckpointPath {return false}
    if self.embeddings != other.embeddings {return false}
    if self.modelCheckpointDir != other.modelCheckpointDir {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}
