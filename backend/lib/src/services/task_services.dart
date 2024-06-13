// Task Grpc Service

import 'package:backend/src/generated/task.pbserver.dart';
import 'package:protobuf/protobuf.dart';

class TaskServices extends TaskGrpcServiceBase {
  @override
  Future<AddResponse> addTask(ServerContext ctx, TaskRequest request) {
    return Future.value(AddResponse()
      ..task = (Task()
        ..id = 1
        ..title = request.task.title
        ..description = request.task.description
        ..status = request.task.status));
  }

  @override
  Future<DeleteResponse> deleteTask(ServerContext ctx, TaskRequest request) {
    return Future.value(DeleteResponse()..message = 'Task Deleted');
  }

  @override
  Future<GetResponse> getTask(ServerContext ctx, TaskRequest request) {
    // TODO: implement getTask
    throw UnimplementedError();
  }

  @override
  Future<UdpateResponse> updateTask(ServerContext ctx, TaskRequest request) {
    // TODO: implement updateTask
    throw UnimplementedError();
  }
}
