//
//  Generated code. Do not modify.
//  source: task.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'task.pb.dart' as $1;
import 'task.pbjson.dart';

export 'task.pb.dart';

abstract class TaskGrpcServiceBase extends $pb.GeneratedService {
  $async.Future<$1.AddResponse> addTask($pb.ServerContext ctx, $1.TaskRequest request);
  $async.Future<$1.GetResponse> getTask($pb.ServerContext ctx, $1.TaskRequest request);
  $async.Future<$1.UdpateResponse> updateTask($pb.ServerContext ctx, $1.TaskRequest request);
  $async.Future<$1.DeleteResponse> deleteTask($pb.ServerContext ctx, $1.TaskRequest request);

  $pb.GeneratedMessage createRequest($core.String methodName) {
    switch (methodName) {
      case 'AddTask': return $1.TaskRequest();
      case 'GetTask': return $1.TaskRequest();
      case 'UpdateTask': return $1.TaskRequest();
      case 'DeleteTask': return $1.TaskRequest();
      default: throw $core.ArgumentError('Unknown method: $methodName');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx, $core.String methodName, $pb.GeneratedMessage request) {
    switch (methodName) {
      case 'AddTask': return this.addTask(ctx, request as $1.TaskRequest);
      case 'GetTask': return this.getTask(ctx, request as $1.TaskRequest);
      case 'UpdateTask': return this.updateTask(ctx, request as $1.TaskRequest);
      case 'DeleteTask': return this.deleteTask(ctx, request as $1.TaskRequest);
      default: throw $core.ArgumentError('Unknown method: $methodName');
    }
  }

  $core.Map<$core.String, $core.dynamic> get $json => TaskGrpcServiceBase$json;
  $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> get $messageJson => TaskGrpcServiceBase$messageJson;
}

