/*
 * DO NOT EDIT.
 *
 * Generated by the protocol buffer compiler.
 * Source: tensorflow/core/protobuf/worker_service.proto
 *
 */

/*
 * Copyright 2017, gRPC Authors All rights reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
import Foundation
import Dispatch
import gRPC

/// Type for errors thrown from generated client code.
internal enum Tensorflow_Grpc_WorkerServiceClientError : Error {
  case endOfStream
  case invalidMessageReceived
  case error(c: CallResult)
}

/// GetStatus (Unary)
internal class Tensorflow_Grpc_WorkerServiceGetStatusCall {
  private var call : Call

  /// Create a call.
  fileprivate init(_ channel: Channel) {
    self.call = channel.makeCall("/tensorflow.grpc.WorkerService/GetStatus")
  }

  /// Run the call. Blocks until the reply is received.
  fileprivate func run(request: Tensorflow_GetStatusRequest,
                       metadata: Metadata) throws -> Tensorflow_GetStatusResponse {
    let sem = DispatchSemaphore(value: 0)
    var returnCallResult : CallResult!
    var returnResponse : Tensorflow_GetStatusResponse?
    _ = try start(request:request, metadata:metadata) {response, callResult in
      returnResponse = response
      returnCallResult = callResult
      sem.signal()
    }
    _ = sem.wait(timeout: DispatchTime.distantFuture)
    if let returnResponse = returnResponse {
      return returnResponse
    } else {
      throw Tensorflow_Grpc_WorkerServiceClientError.error(c: returnCallResult)
    }
  }

  /// Start the call. Nonblocking.
  fileprivate func start(request: Tensorflow_GetStatusRequest,
                         metadata: Metadata,
                         completion: @escaping (Tensorflow_GetStatusResponse?, CallResult)->())
    throws -> Tensorflow_Grpc_WorkerServiceGetStatusCall {

      let requestData = try request.serializedData()
      try call.start(.unary,
                     metadata:metadata,
                     message:requestData)
      {(callResult) in
        if let responseData = callResult.resultData,
          let response = try? Tensorflow_GetStatusResponse(serializedData:responseData) {
          completion(response, callResult)
        } else {
          completion(nil, callResult)
        }
      }
      return self
  }
}

/// CreateWorkerSession (Unary)
internal class Tensorflow_Grpc_WorkerServiceCreateWorkerSessionCall {
  private var call : Call

  /// Create a call.
  fileprivate init(_ channel: Channel) {
    self.call = channel.makeCall("/tensorflow.grpc.WorkerService/CreateWorkerSession")
  }

  /// Run the call. Blocks until the reply is received.
  fileprivate func run(request: Tensorflow_CreateWorkerSessionRequest,
                       metadata: Metadata) throws -> Tensorflow_CreateWorkerSessionResponse {
    let sem = DispatchSemaphore(value: 0)
    var returnCallResult : CallResult!
    var returnResponse : Tensorflow_CreateWorkerSessionResponse?
    _ = try start(request:request, metadata:metadata) {response, callResult in
      returnResponse = response
      returnCallResult = callResult
      sem.signal()
    }
    _ = sem.wait(timeout: DispatchTime.distantFuture)
    if let returnResponse = returnResponse {
      return returnResponse
    } else {
      throw Tensorflow_Grpc_WorkerServiceClientError.error(c: returnCallResult)
    }
  }

  /// Start the call. Nonblocking.
  fileprivate func start(request: Tensorflow_CreateWorkerSessionRequest,
                         metadata: Metadata,
                         completion: @escaping (Tensorflow_CreateWorkerSessionResponse?, CallResult)->())
    throws -> Tensorflow_Grpc_WorkerServiceCreateWorkerSessionCall {

      let requestData = try request.serializedData()
      try call.start(.unary,
                     metadata:metadata,
                     message:requestData)
      {(callResult) in
        if let responseData = callResult.resultData,
          let response = try? Tensorflow_CreateWorkerSessionResponse(serializedData:responseData) {
          completion(response, callResult)
        } else {
          completion(nil, callResult)
        }
      }
      return self
  }
}

/// RegisterGraph (Unary)
internal class Tensorflow_Grpc_WorkerServiceRegisterGraphCall {
  private var call : Call

  /// Create a call.
  fileprivate init(_ channel: Channel) {
    self.call = channel.makeCall("/tensorflow.grpc.WorkerService/RegisterGraph")
  }

  /// Run the call. Blocks until the reply is received.
  fileprivate func run(request: Tensorflow_RegisterGraphRequest,
                       metadata: Metadata) throws -> Tensorflow_RegisterGraphResponse {
    let sem = DispatchSemaphore(value: 0)
    var returnCallResult : CallResult!
    var returnResponse : Tensorflow_RegisterGraphResponse?
    _ = try start(request:request, metadata:metadata) {response, callResult in
      returnResponse = response
      returnCallResult = callResult
      sem.signal()
    }
    _ = sem.wait(timeout: DispatchTime.distantFuture)
    if let returnResponse = returnResponse {
      return returnResponse
    } else {
      throw Tensorflow_Grpc_WorkerServiceClientError.error(c: returnCallResult)
    }
  }

  /// Start the call. Nonblocking.
  fileprivate func start(request: Tensorflow_RegisterGraphRequest,
                         metadata: Metadata,
                         completion: @escaping (Tensorflow_RegisterGraphResponse?, CallResult)->())
    throws -> Tensorflow_Grpc_WorkerServiceRegisterGraphCall {

      let requestData = try request.serializedData()
      try call.start(.unary,
                     metadata:metadata,
                     message:requestData)
      {(callResult) in
        if let responseData = callResult.resultData,
          let response = try? Tensorflow_RegisterGraphResponse(serializedData:responseData) {
          completion(response, callResult)
        } else {
          completion(nil, callResult)
        }
      }
      return self
  }
}

/// DeregisterGraph (Unary)
internal class Tensorflow_Grpc_WorkerServiceDeregisterGraphCall {
  private var call : Call

  /// Create a call.
  fileprivate init(_ channel: Channel) {
    self.call = channel.makeCall("/tensorflow.grpc.WorkerService/DeregisterGraph")
  }

  /// Run the call. Blocks until the reply is received.
  fileprivate func run(request: Tensorflow_DeregisterGraphRequest,
                       metadata: Metadata) throws -> Tensorflow_DeregisterGraphResponse {
    let sem = DispatchSemaphore(value: 0)
    var returnCallResult : CallResult!
    var returnResponse : Tensorflow_DeregisterGraphResponse?
    _ = try start(request:request, metadata:metadata) {response, callResult in
      returnResponse = response
      returnCallResult = callResult
      sem.signal()
    }
    _ = sem.wait(timeout: DispatchTime.distantFuture)
    if let returnResponse = returnResponse {
      return returnResponse
    } else {
      throw Tensorflow_Grpc_WorkerServiceClientError.error(c: returnCallResult)
    }
  }

  /// Start the call. Nonblocking.
  fileprivate func start(request: Tensorflow_DeregisterGraphRequest,
                         metadata: Metadata,
                         completion: @escaping (Tensorflow_DeregisterGraphResponse?, CallResult)->())
    throws -> Tensorflow_Grpc_WorkerServiceDeregisterGraphCall {

      let requestData = try request.serializedData()
      try call.start(.unary,
                     metadata:metadata,
                     message:requestData)
      {(callResult) in
        if let responseData = callResult.resultData,
          let response = try? Tensorflow_DeregisterGraphResponse(serializedData:responseData) {
          completion(response, callResult)
        } else {
          completion(nil, callResult)
        }
      }
      return self
  }
}

/// RunGraph (Unary)
internal class Tensorflow_Grpc_WorkerServiceRunGraphCall {
  private var call : Call

  /// Create a call.
  fileprivate init(_ channel: Channel) {
    self.call = channel.makeCall("/tensorflow.grpc.WorkerService/RunGraph")
  }

  /// Run the call. Blocks until the reply is received.
  fileprivate func run(request: Tensorflow_RunGraphRequest,
                       metadata: Metadata) throws -> Tensorflow_RunGraphResponse {
    let sem = DispatchSemaphore(value: 0)
    var returnCallResult : CallResult!
    var returnResponse : Tensorflow_RunGraphResponse?
    _ = try start(request:request, metadata:metadata) {response, callResult in
      returnResponse = response
      returnCallResult = callResult
      sem.signal()
    }
    _ = sem.wait(timeout: DispatchTime.distantFuture)
    if let returnResponse = returnResponse {
      return returnResponse
    } else {
      throw Tensorflow_Grpc_WorkerServiceClientError.error(c: returnCallResult)
    }
  }

  /// Start the call. Nonblocking.
  fileprivate func start(request: Tensorflow_RunGraphRequest,
                         metadata: Metadata,
                         completion: @escaping (Tensorflow_RunGraphResponse?, CallResult)->())
    throws -> Tensorflow_Grpc_WorkerServiceRunGraphCall {

      let requestData = try request.serializedData()
      try call.start(.unary,
                     metadata:metadata,
                     message:requestData)
      {(callResult) in
        if let responseData = callResult.resultData,
          let response = try? Tensorflow_RunGraphResponse(serializedData:responseData) {
          completion(response, callResult)
        } else {
          completion(nil, callResult)
        }
      }
      return self
  }
}

/// CleanupGraph (Unary)
internal class Tensorflow_Grpc_WorkerServiceCleanupGraphCall {
  private var call : Call

  /// Create a call.
  fileprivate init(_ channel: Channel) {
    self.call = channel.makeCall("/tensorflow.grpc.WorkerService/CleanupGraph")
  }

  /// Run the call. Blocks until the reply is received.
  fileprivate func run(request: Tensorflow_CleanupGraphRequest,
                       metadata: Metadata) throws -> Tensorflow_CleanupGraphResponse {
    let sem = DispatchSemaphore(value: 0)
    var returnCallResult : CallResult!
    var returnResponse : Tensorflow_CleanupGraphResponse?
    _ = try start(request:request, metadata:metadata) {response, callResult in
      returnResponse = response
      returnCallResult = callResult
      sem.signal()
    }
    _ = sem.wait(timeout: DispatchTime.distantFuture)
    if let returnResponse = returnResponse {
      return returnResponse
    } else {
      throw Tensorflow_Grpc_WorkerServiceClientError.error(c: returnCallResult)
    }
  }

  /// Start the call. Nonblocking.
  fileprivate func start(request: Tensorflow_CleanupGraphRequest,
                         metadata: Metadata,
                         completion: @escaping (Tensorflow_CleanupGraphResponse?, CallResult)->())
    throws -> Tensorflow_Grpc_WorkerServiceCleanupGraphCall {

      let requestData = try request.serializedData()
      try call.start(.unary,
                     metadata:metadata,
                     message:requestData)
      {(callResult) in
        if let responseData = callResult.resultData,
          let response = try? Tensorflow_CleanupGraphResponse(serializedData:responseData) {
          completion(response, callResult)
        } else {
          completion(nil, callResult)
        }
      }
      return self
  }
}

/// CleanupAll (Unary)
internal class Tensorflow_Grpc_WorkerServiceCleanupAllCall {
  private var call : Call

  /// Create a call.
  fileprivate init(_ channel: Channel) {
    self.call = channel.makeCall("/tensorflow.grpc.WorkerService/CleanupAll")
  }

  /// Run the call. Blocks until the reply is received.
  fileprivate func run(request: Tensorflow_CleanupAllRequest,
                       metadata: Metadata) throws -> Tensorflow_CleanupAllResponse {
    let sem = DispatchSemaphore(value: 0)
    var returnCallResult : CallResult!
    var returnResponse : Tensorflow_CleanupAllResponse?
    _ = try start(request:request, metadata:metadata) {response, callResult in
      returnResponse = response
      returnCallResult = callResult
      sem.signal()
    }
    _ = sem.wait(timeout: DispatchTime.distantFuture)
    if let returnResponse = returnResponse {
      return returnResponse
    } else {
      throw Tensorflow_Grpc_WorkerServiceClientError.error(c: returnCallResult)
    }
  }

  /// Start the call. Nonblocking.
  fileprivate func start(request: Tensorflow_CleanupAllRequest,
                         metadata: Metadata,
                         completion: @escaping (Tensorflow_CleanupAllResponse?, CallResult)->())
    throws -> Tensorflow_Grpc_WorkerServiceCleanupAllCall {

      let requestData = try request.serializedData()
      try call.start(.unary,
                     metadata:metadata,
                     message:requestData)
      {(callResult) in
        if let responseData = callResult.resultData,
          let response = try? Tensorflow_CleanupAllResponse(serializedData:responseData) {
          completion(response, callResult)
        } else {
          completion(nil, callResult)
        }
      }
      return self
  }
}

/// RecvTensor (Unary)
internal class Tensorflow_Grpc_WorkerServiceRecvTensorCall {
  private var call : Call

  /// Create a call.
  fileprivate init(_ channel: Channel) {
    self.call = channel.makeCall("/tensorflow.grpc.WorkerService/RecvTensor")
  }

  /// Run the call. Blocks until the reply is received.
  fileprivate func run(request: Tensorflow_RecvTensorRequest,
                       metadata: Metadata) throws -> Tensorflow_RecvTensorResponse {
    let sem = DispatchSemaphore(value: 0)
    var returnCallResult : CallResult!
    var returnResponse : Tensorflow_RecvTensorResponse?
    _ = try start(request:request, metadata:metadata) {response, callResult in
      returnResponse = response
      returnCallResult = callResult
      sem.signal()
    }
    _ = sem.wait(timeout: DispatchTime.distantFuture)
    if let returnResponse = returnResponse {
      return returnResponse
    } else {
      throw Tensorflow_Grpc_WorkerServiceClientError.error(c: returnCallResult)
    }
  }

  /// Start the call. Nonblocking.
  fileprivate func start(request: Tensorflow_RecvTensorRequest,
                         metadata: Metadata,
                         completion: @escaping (Tensorflow_RecvTensorResponse?, CallResult)->())
    throws -> Tensorflow_Grpc_WorkerServiceRecvTensorCall {

      let requestData = try request.serializedData()
      try call.start(.unary,
                     metadata:metadata,
                     message:requestData)
      {(callResult) in
        if let responseData = callResult.resultData,
          let response = try? Tensorflow_RecvTensorResponse(serializedData:responseData) {
          completion(response, callResult)
        } else {
          completion(nil, callResult)
        }
      }
      return self
  }
}

/// Logging (Unary)
internal class Tensorflow_Grpc_WorkerServiceLoggingCall {
  private var call : Call

  /// Create a call.
  fileprivate init(_ channel: Channel) {
    self.call = channel.makeCall("/tensorflow.grpc.WorkerService/Logging")
  }

  /// Run the call. Blocks until the reply is received.
  fileprivate func run(request: Tensorflow_LoggingRequest,
                       metadata: Metadata) throws -> Tensorflow_LoggingResponse {
    let sem = DispatchSemaphore(value: 0)
    var returnCallResult : CallResult!
    var returnResponse : Tensorflow_LoggingResponse?
    _ = try start(request:request, metadata:metadata) {response, callResult in
      returnResponse = response
      returnCallResult = callResult
      sem.signal()
    }
    _ = sem.wait(timeout: DispatchTime.distantFuture)
    if let returnResponse = returnResponse {
      return returnResponse
    } else {
      throw Tensorflow_Grpc_WorkerServiceClientError.error(c: returnCallResult)
    }
  }

  /// Start the call. Nonblocking.
  fileprivate func start(request: Tensorflow_LoggingRequest,
                         metadata: Metadata,
                         completion: @escaping (Tensorflow_LoggingResponse?, CallResult)->())
    throws -> Tensorflow_Grpc_WorkerServiceLoggingCall {

      let requestData = try request.serializedData()
      try call.start(.unary,
                     metadata:metadata,
                     message:requestData)
      {(callResult) in
        if let responseData = callResult.resultData,
          let response = try? Tensorflow_LoggingResponse(serializedData:responseData) {
          completion(response, callResult)
        } else {
          completion(nil, callResult)
        }
      }
      return self
  }
}

/// Tracing (Unary)
internal class Tensorflow_Grpc_WorkerServiceTracingCall {
  private var call : Call

  /// Create a call.
  fileprivate init(_ channel: Channel) {
    self.call = channel.makeCall("/tensorflow.grpc.WorkerService/Tracing")
  }

  /// Run the call. Blocks until the reply is received.
  fileprivate func run(request: Tensorflow_TracingRequest,
                       metadata: Metadata) throws -> Tensorflow_TracingResponse {
    let sem = DispatchSemaphore(value: 0)
    var returnCallResult : CallResult!
    var returnResponse : Tensorflow_TracingResponse?
    _ = try start(request:request, metadata:metadata) {response, callResult in
      returnResponse = response
      returnCallResult = callResult
      sem.signal()
    }
    _ = sem.wait(timeout: DispatchTime.distantFuture)
    if let returnResponse = returnResponse {
      return returnResponse
    } else {
      throw Tensorflow_Grpc_WorkerServiceClientError.error(c: returnCallResult)
    }
  }

  /// Start the call. Nonblocking.
  fileprivate func start(request: Tensorflow_TracingRequest,
                         metadata: Metadata,
                         completion: @escaping (Tensorflow_TracingResponse?, CallResult)->())
    throws -> Tensorflow_Grpc_WorkerServiceTracingCall {

      let requestData = try request.serializedData()
      try call.start(.unary,
                     metadata:metadata,
                     message:requestData)
      {(callResult) in
        if let responseData = callResult.resultData,
          let response = try? Tensorflow_TracingResponse(serializedData:responseData) {
          completion(response, callResult)
        } else {
          completion(nil, callResult)
        }
      }
      return self
  }
}

/// Call methods of this class to make API calls.
internal class Tensorflow_Grpc_WorkerServiceService {
  private var channel: Channel

  /// This metadata will be sent with all requests.
  internal var metadata : Metadata

  /// This property allows the service host name to be overridden.
  /// For example, it can be used to make calls to "localhost:8080"
  /// appear to be to "example.com".
  internal var host : String {
    get {
      return self.channel.host
    }
    set {
      self.channel.host = newValue
    }
  }

  /// Create a client that makes insecure connections.
  internal init(address: String) {
    gRPC.initialize()
    channel = Channel(address:address)
    metadata = Metadata()
  }

  /// Create a client that makes secure connections.
  internal init(address: String, certificates: String?, host: String?) {
    gRPC.initialize()
    channel = Channel(address:address, certificates:certificates, host:host)
    metadata = Metadata()
  }

  /// Synchronous. Unary.
  internal func getstatus(_ request: Tensorflow_GetStatusRequest)
    throws
    -> Tensorflow_GetStatusResponse {
      return try Tensorflow_Grpc_WorkerServiceGetStatusCall(channel).run(request:request, metadata:metadata)
  }
  /// Asynchronous. Unary.
  internal func getstatus(_ request: Tensorflow_GetStatusRequest,
                  completion: @escaping (Tensorflow_GetStatusResponse?, CallResult)->())
    throws
    -> Tensorflow_Grpc_WorkerServiceGetStatusCall {
      return try Tensorflow_Grpc_WorkerServiceGetStatusCall(channel).start(request:request,
                                                 metadata:metadata,
                                                 completion:completion)
  }
  /// Synchronous. Unary.
  internal func createworkersession(_ request: Tensorflow_CreateWorkerSessionRequest)
    throws
    -> Tensorflow_CreateWorkerSessionResponse {
      return try Tensorflow_Grpc_WorkerServiceCreateWorkerSessionCall(channel).run(request:request, metadata:metadata)
  }
  /// Asynchronous. Unary.
  internal func createworkersession(_ request: Tensorflow_CreateWorkerSessionRequest,
                  completion: @escaping (Tensorflow_CreateWorkerSessionResponse?, CallResult)->())
    throws
    -> Tensorflow_Grpc_WorkerServiceCreateWorkerSessionCall {
      return try Tensorflow_Grpc_WorkerServiceCreateWorkerSessionCall(channel).start(request:request,
                                                 metadata:metadata,
                                                 completion:completion)
  }
  /// Synchronous. Unary.
  internal func registergraph(_ request: Tensorflow_RegisterGraphRequest)
    throws
    -> Tensorflow_RegisterGraphResponse {
      return try Tensorflow_Grpc_WorkerServiceRegisterGraphCall(channel).run(request:request, metadata:metadata)
  }
  /// Asynchronous. Unary.
  internal func registergraph(_ request: Tensorflow_RegisterGraphRequest,
                  completion: @escaping (Tensorflow_RegisterGraphResponse?, CallResult)->())
    throws
    -> Tensorflow_Grpc_WorkerServiceRegisterGraphCall {
      return try Tensorflow_Grpc_WorkerServiceRegisterGraphCall(channel).start(request:request,
                                                 metadata:metadata,
                                                 completion:completion)
  }
  /// Synchronous. Unary.
  internal func deregistergraph(_ request: Tensorflow_DeregisterGraphRequest)
    throws
    -> Tensorflow_DeregisterGraphResponse {
      return try Tensorflow_Grpc_WorkerServiceDeregisterGraphCall(channel).run(request:request, metadata:metadata)
  }
  /// Asynchronous. Unary.
  internal func deregistergraph(_ request: Tensorflow_DeregisterGraphRequest,
                  completion: @escaping (Tensorflow_DeregisterGraphResponse?, CallResult)->())
    throws
    -> Tensorflow_Grpc_WorkerServiceDeregisterGraphCall {
      return try Tensorflow_Grpc_WorkerServiceDeregisterGraphCall(channel).start(request:request,
                                                 metadata:metadata,
                                                 completion:completion)
  }
  /// Synchronous. Unary.
  internal func rungraph(_ request: Tensorflow_RunGraphRequest)
    throws
    -> Tensorflow_RunGraphResponse {
      return try Tensorflow_Grpc_WorkerServiceRunGraphCall(channel).run(request:request, metadata:metadata)
  }
  /// Asynchronous. Unary.
  internal func rungraph(_ request: Tensorflow_RunGraphRequest,
                  completion: @escaping (Tensorflow_RunGraphResponse?, CallResult)->())
    throws
    -> Tensorflow_Grpc_WorkerServiceRunGraphCall {
      return try Tensorflow_Grpc_WorkerServiceRunGraphCall(channel).start(request:request,
                                                 metadata:metadata,
                                                 completion:completion)
  }
  /// Synchronous. Unary.
  internal func cleanupgraph(_ request: Tensorflow_CleanupGraphRequest)
    throws
    -> Tensorflow_CleanupGraphResponse {
      return try Tensorflow_Grpc_WorkerServiceCleanupGraphCall(channel).run(request:request, metadata:metadata)
  }
  /// Asynchronous. Unary.
  internal func cleanupgraph(_ request: Tensorflow_CleanupGraphRequest,
                  completion: @escaping (Tensorflow_CleanupGraphResponse?, CallResult)->())
    throws
    -> Tensorflow_Grpc_WorkerServiceCleanupGraphCall {
      return try Tensorflow_Grpc_WorkerServiceCleanupGraphCall(channel).start(request:request,
                                                 metadata:metadata,
                                                 completion:completion)
  }
  /// Synchronous. Unary.
  internal func cleanupall(_ request: Tensorflow_CleanupAllRequest)
    throws
    -> Tensorflow_CleanupAllResponse {
      return try Tensorflow_Grpc_WorkerServiceCleanupAllCall(channel).run(request:request, metadata:metadata)
  }
  /// Asynchronous. Unary.
  internal func cleanupall(_ request: Tensorflow_CleanupAllRequest,
                  completion: @escaping (Tensorflow_CleanupAllResponse?, CallResult)->())
    throws
    -> Tensorflow_Grpc_WorkerServiceCleanupAllCall {
      return try Tensorflow_Grpc_WorkerServiceCleanupAllCall(channel).start(request:request,
                                                 metadata:metadata,
                                                 completion:completion)
  }
  /// Synchronous. Unary.
  internal func recvtensor(_ request: Tensorflow_RecvTensorRequest)
    throws
    -> Tensorflow_RecvTensorResponse {
      return try Tensorflow_Grpc_WorkerServiceRecvTensorCall(channel).run(request:request, metadata:metadata)
  }
  /// Asynchronous. Unary.
  internal func recvtensor(_ request: Tensorflow_RecvTensorRequest,
                  completion: @escaping (Tensorflow_RecvTensorResponse?, CallResult)->())
    throws
    -> Tensorflow_Grpc_WorkerServiceRecvTensorCall {
      return try Tensorflow_Grpc_WorkerServiceRecvTensorCall(channel).start(request:request,
                                                 metadata:metadata,
                                                 completion:completion)
  }
  /// Synchronous. Unary.
  internal func logging(_ request: Tensorflow_LoggingRequest)
    throws
    -> Tensorflow_LoggingResponse {
      return try Tensorflow_Grpc_WorkerServiceLoggingCall(channel).run(request:request, metadata:metadata)
  }
  /// Asynchronous. Unary.
  internal func logging(_ request: Tensorflow_LoggingRequest,
                  completion: @escaping (Tensorflow_LoggingResponse?, CallResult)->())
    throws
    -> Tensorflow_Grpc_WorkerServiceLoggingCall {
      return try Tensorflow_Grpc_WorkerServiceLoggingCall(channel).start(request:request,
                                                 metadata:metadata,
                                                 completion:completion)
  }
  /// Synchronous. Unary.
  internal func tracing(_ request: Tensorflow_TracingRequest)
    throws
    -> Tensorflow_TracingResponse {
      return try Tensorflow_Grpc_WorkerServiceTracingCall(channel).run(request:request, metadata:metadata)
  }
  /// Asynchronous. Unary.
  internal func tracing(_ request: Tensorflow_TracingRequest,
                  completion: @escaping (Tensorflow_TracingResponse?, CallResult)->())
    throws
    -> Tensorflow_Grpc_WorkerServiceTracingCall {
      return try Tensorflow_Grpc_WorkerServiceTracingCall(channel).start(request:request,
                                                 metadata:metadata,
                                                 completion:completion)
  }
}
