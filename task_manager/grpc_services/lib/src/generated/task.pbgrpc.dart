//
//  Generated code. Do not modify.
//  source: task.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'task.pb.dart' as $1;

export 'task.pb.dart';

@$pb.GrpcServiceName('task.ProjectService')
class ProjectServiceClient extends $grpc.Client {
  static final _$createProject = $grpc.ClientMethod<$1.CreateProjectRequest, $1.Project>(
      '/task.ProjectService/CreateProject',
      ($1.CreateProjectRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.Project.fromBuffer(value));
  static final _$updateProject = $grpc.ClientMethod<$1.UpdateProjectRequest, $1.Project>(
      '/task.ProjectService/UpdateProject',
      ($1.UpdateProjectRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.Project.fromBuffer(value));
  static final _$deleteProject = $grpc.ClientMethod<$1.DeleteProjectRequest, $1.Project>(
      '/task.ProjectService/DeleteProject',
      ($1.DeleteProjectRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.Project.fromBuffer(value));
  static final _$getProject = $grpc.ClientMethod<$1.GetProjectRequest, $1.Project>(
      '/task.ProjectService/GetProject',
      ($1.GetProjectRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.Project.fromBuffer(value));
  static final _$getProjects = $grpc.ClientMethod<$1.EmptyRequest, $1.ProjectListResponse>(
      '/task.ProjectService/GetProjects',
      ($1.EmptyRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.ProjectListResponse.fromBuffer(value));

  ProjectServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$1.Project> createProject($1.CreateProjectRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createProject, request, options: options);
  }

  $grpc.ResponseFuture<$1.Project> updateProject($1.UpdateProjectRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateProject, request, options: options);
  }

  $grpc.ResponseFuture<$1.Project> deleteProject($1.DeleteProjectRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteProject, request, options: options);
  }

  $grpc.ResponseFuture<$1.Project> getProject($1.GetProjectRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getProject, request, options: options);
  }

  $grpc.ResponseFuture<$1.ProjectListResponse> getProjects($1.EmptyRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getProjects, request, options: options);
  }
}

@$pb.GrpcServiceName('task.ProjectService')
abstract class ProjectServiceBase extends $grpc.Service {
  $core.String get $name => 'task.ProjectService';

  ProjectServiceBase() {
    $addMethod($grpc.ServiceMethod<$1.CreateProjectRequest, $1.Project>(
        'CreateProject',
        createProject_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.CreateProjectRequest.fromBuffer(value),
        ($1.Project value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.UpdateProjectRequest, $1.Project>(
        'UpdateProject',
        updateProject_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.UpdateProjectRequest.fromBuffer(value),
        ($1.Project value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.DeleteProjectRequest, $1.Project>(
        'DeleteProject',
        deleteProject_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.DeleteProjectRequest.fromBuffer(value),
        ($1.Project value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.GetProjectRequest, $1.Project>(
        'GetProject',
        getProject_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.GetProjectRequest.fromBuffer(value),
        ($1.Project value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.EmptyRequest, $1.ProjectListResponse>(
        'GetProjects',
        getProjects_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.EmptyRequest.fromBuffer(value),
        ($1.ProjectListResponse value) => value.writeToBuffer()));
  }

  $async.Future<$1.Project> createProject_Pre($grpc.ServiceCall call, $async.Future<$1.CreateProjectRequest> request) async {
    return createProject(call, await request);
  }

  $async.Future<$1.Project> updateProject_Pre($grpc.ServiceCall call, $async.Future<$1.UpdateProjectRequest> request) async {
    return updateProject(call, await request);
  }

  $async.Future<$1.Project> deleteProject_Pre($grpc.ServiceCall call, $async.Future<$1.DeleteProjectRequest> request) async {
    return deleteProject(call, await request);
  }

  $async.Future<$1.Project> getProject_Pre($grpc.ServiceCall call, $async.Future<$1.GetProjectRequest> request) async {
    return getProject(call, await request);
  }

  $async.Future<$1.ProjectListResponse> getProjects_Pre($grpc.ServiceCall call, $async.Future<$1.EmptyRequest> request) async {
    return getProjects(call, await request);
  }

  $async.Future<$1.Project> createProject($grpc.ServiceCall call, $1.CreateProjectRequest request);
  $async.Future<$1.Project> updateProject($grpc.ServiceCall call, $1.UpdateProjectRequest request);
  $async.Future<$1.Project> deleteProject($grpc.ServiceCall call, $1.DeleteProjectRequest request);
  $async.Future<$1.Project> getProject($grpc.ServiceCall call, $1.GetProjectRequest request);
  $async.Future<$1.ProjectListResponse> getProjects($grpc.ServiceCall call, $1.EmptyRequest request);
}
@$pb.GrpcServiceName('task.TaskService')
class TaskServiceClient extends $grpc.Client {
  static final _$createTask = $grpc.ClientMethod<$1.CreateTaskRequest, $1.Task>(
      '/task.TaskService/CreateTask',
      ($1.CreateTaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.Task.fromBuffer(value));
  static final _$updateTask = $grpc.ClientMethod<$1.UpdateTaskRequest, $1.Task>(
      '/task.TaskService/UpdateTask',
      ($1.UpdateTaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.Task.fromBuffer(value));
  static final _$deleteTask = $grpc.ClientMethod<$1.DeleteTaskRequest, $1.Task>(
      '/task.TaskService/DeleteTask',
      ($1.DeleteTaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.Task.fromBuffer(value));
  static final _$getTask = $grpc.ClientMethod<$1.GetTaskRequest, $1.GetTaskResponse>(
      '/task.TaskService/GetTask',
      ($1.GetTaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.GetTaskResponse.fromBuffer(value));
  static final _$getTasks = $grpc.ClientMethod<$1.EmptyRequest, $1.TaskListResponse>(
      '/task.TaskService/GetTasks',
      ($1.EmptyRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.TaskListResponse.fromBuffer(value));
  static final _$addOrUpdateComment = $grpc.ClientMethod<$1.AddOrUpdateCommentRequest, $1.Comment>(
      '/task.TaskService/AddOrUpdateComment',
      ($1.AddOrUpdateCommentRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.Comment.fromBuffer(value));
  static final _$addOrRemoveUserToTask = $grpc.ClientMethod<$1.AddOrRemoveUserToTaskRequest, $1.Task>(
      '/task.TaskService/AddOrRemoveUserToTask',
      ($1.AddOrRemoveUserToTaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.Task.fromBuffer(value));

  TaskServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$1.Task> createTask($1.CreateTaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createTask, request, options: options);
  }

  $grpc.ResponseFuture<$1.Task> updateTask($1.UpdateTaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateTask, request, options: options);
  }

  $grpc.ResponseFuture<$1.Task> deleteTask($1.DeleteTaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteTask, request, options: options);
  }

  $grpc.ResponseFuture<$1.GetTaskResponse> getTask($1.GetTaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getTask, request, options: options);
  }

  $grpc.ResponseFuture<$1.TaskListResponse> getTasks($1.EmptyRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getTasks, request, options: options);
  }

  $grpc.ResponseFuture<$1.Comment> addOrUpdateComment($1.AddOrUpdateCommentRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addOrUpdateComment, request, options: options);
  }

  $grpc.ResponseFuture<$1.Task> addOrRemoveUserToTask($1.AddOrRemoveUserToTaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addOrRemoveUserToTask, request, options: options);
  }
}

@$pb.GrpcServiceName('task.TaskService')
abstract class TaskServiceBase extends $grpc.Service {
  $core.String get $name => 'task.TaskService';

  TaskServiceBase() {
    $addMethod($grpc.ServiceMethod<$1.CreateTaskRequest, $1.Task>(
        'CreateTask',
        createTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.CreateTaskRequest.fromBuffer(value),
        ($1.Task value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.UpdateTaskRequest, $1.Task>(
        'UpdateTask',
        updateTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.UpdateTaskRequest.fromBuffer(value),
        ($1.Task value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.DeleteTaskRequest, $1.Task>(
        'DeleteTask',
        deleteTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.DeleteTaskRequest.fromBuffer(value),
        ($1.Task value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.GetTaskRequest, $1.GetTaskResponse>(
        'GetTask',
        getTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.GetTaskRequest.fromBuffer(value),
        ($1.GetTaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.EmptyRequest, $1.TaskListResponse>(
        'GetTasks',
        getTasks_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.EmptyRequest.fromBuffer(value),
        ($1.TaskListResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.AddOrUpdateCommentRequest, $1.Comment>(
        'AddOrUpdateComment',
        addOrUpdateComment_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.AddOrUpdateCommentRequest.fromBuffer(value),
        ($1.Comment value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.AddOrRemoveUserToTaskRequest, $1.Task>(
        'AddOrRemoveUserToTask',
        addOrRemoveUserToTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.AddOrRemoveUserToTaskRequest.fromBuffer(value),
        ($1.Task value) => value.writeToBuffer()));
  }

  $async.Future<$1.Task> createTask_Pre($grpc.ServiceCall call, $async.Future<$1.CreateTaskRequest> request) async {
    return createTask(call, await request);
  }

  $async.Future<$1.Task> updateTask_Pre($grpc.ServiceCall call, $async.Future<$1.UpdateTaskRequest> request) async {
    return updateTask(call, await request);
  }

  $async.Future<$1.Task> deleteTask_Pre($grpc.ServiceCall call, $async.Future<$1.DeleteTaskRequest> request) async {
    return deleteTask(call, await request);
  }

  $async.Future<$1.GetTaskResponse> getTask_Pre($grpc.ServiceCall call, $async.Future<$1.GetTaskRequest> request) async {
    return getTask(call, await request);
  }

  $async.Future<$1.TaskListResponse> getTasks_Pre($grpc.ServiceCall call, $async.Future<$1.EmptyRequest> request) async {
    return getTasks(call, await request);
  }

  $async.Future<$1.Comment> addOrUpdateComment_Pre($grpc.ServiceCall call, $async.Future<$1.AddOrUpdateCommentRequest> request) async {
    return addOrUpdateComment(call, await request);
  }

  $async.Future<$1.Task> addOrRemoveUserToTask_Pre($grpc.ServiceCall call, $async.Future<$1.AddOrRemoveUserToTaskRequest> request) async {
    return addOrRemoveUserToTask(call, await request);
  }

  $async.Future<$1.Task> createTask($grpc.ServiceCall call, $1.CreateTaskRequest request);
  $async.Future<$1.Task> updateTask($grpc.ServiceCall call, $1.UpdateTaskRequest request);
  $async.Future<$1.Task> deleteTask($grpc.ServiceCall call, $1.DeleteTaskRequest request);
  $async.Future<$1.GetTaskResponse> getTask($grpc.ServiceCall call, $1.GetTaskRequest request);
  $async.Future<$1.TaskListResponse> getTasks($grpc.ServiceCall call, $1.EmptyRequest request);
  $async.Future<$1.Comment> addOrUpdateComment($grpc.ServiceCall call, $1.AddOrUpdateCommentRequest request);
  $async.Future<$1.Task> addOrRemoveUserToTask($grpc.ServiceCall call, $1.AddOrRemoveUserToTaskRequest request);
}
