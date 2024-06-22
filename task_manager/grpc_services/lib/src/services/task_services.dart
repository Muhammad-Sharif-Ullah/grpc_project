import 'package:grpc/grpc.dart';
import 'package:grpc_services/src/generated/task.pbgrpc.dart';

class TaskServices extends TaskServiceBase {
  @override
  Future<Task> addOrRemoveUserToTask(
      ServiceCall call, AddOrRemoveUserToTaskRequest request) {
    if (request.isRemove) {
      ///TODO: remove Method Handler
    } else {
      ///TODO: add method handler
    }
    throw UnimplementedError();
  }

  @override
  Future<Comment> addOrUpdateComment(
      ServiceCall call, AddOrUpdateCommentRequest request) {
    // TODO: implement addOrUpdateComment
    throw UnimplementedError();
  }

  @override
  Future<Task> createTask(ServiceCall call, CreateTaskRequest request) {
    // TODO: implement createTask
    throw UnimplementedError();
  }

  @override
  Future<Task> deleteTask(ServiceCall call, DeleteTaskRequest request) {
    // TODO: implement deleteTask
    throw UnimplementedError();
  }

  @override
  Future<GetTaskResponse> getTask(ServiceCall call, GetTaskRequest request) {
    // TODO: implement getTask
    throw UnimplementedError();
  }

  @override
  Future<TaskListResponse> getTasks(ServiceCall call, EmptyRequest request) {
    // TODO: implement getTasks
    throw UnimplementedError();
  }

  @override
  Future<Task> updateTask(ServiceCall call, UpdateTaskRequest request) {
    // TODO: implement updateTask
    throw UnimplementedError();
  }
}
