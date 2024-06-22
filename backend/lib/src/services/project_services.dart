import 'dart:developer';

import 'package:backend/src/generated/google/protobuf/timestamp.pbserver.dart';
import 'package:backend/src/generated/task.pbgrpc.dart';
import 'package:grpc/grpc.dart';
import 'package:sqlite3/sqlite3.dart';

class ProjectServices extends ProjectServiceBase {
  final Database database;

  ProjectServices({required this.database});
  @override
  Future<Project> createProject(
      ServiceCall call, CreateProjectRequest request) {
    String name = request.name;
    log('Name: $name');

    // check if project name already exists
    final result = database.select(
      'SELECT * FROM Projects WHERE name = ?',
      [name],
    );
    // log('Result: $result');
    final project = Project();
    project.name = request.name;
    project.description = request.description;
    // project.status = request.status;
    // project.priority = request.priority;
    project.createAt = Timestamp.fromDateTime(DateTime.now());
    project.updateAt = Timestamp.fromDateTime(DateTime.now());
    project.createUser = TaskUser(
      user: User()
        ..id = 1
        ..name = 'Sharif'
        ..email = 'sharif.dev.bd@gmial.com'
        ..avatar = 'https://avatars.githubusercontent.com/u/11681209?v=4',
      permissions: [],
    );
    // insert project into database
    // database.execute(
    //   'INSERT INTO Projects (name, description, create_at, update_at, create_user_id, status, priority) VALUES (?, ?, ?, ?, ?, ?, ?)',
    //   [
    //     project.name,
    //     project.description,
    //     project.createAt.seconds,
    //     project.updateAt.seconds,
    //     project.createUser.user.id,
    //     project.status,
    //     project.priority,
    //   ],
    // );
    return Future.value(project);
  }

  @override
  Future<Project> deleteProject(
      ServiceCall call, DeleteProjectRequest request) {
    // TODO: implement deleteProject
    throw UnimplementedError();
  }

  @override
  Future<Project> getProject(ServiceCall call, GetProjectRequest request) {
    // TODO: implement getProject
    throw UnimplementedError();
  }

  @override
  Future<ProjectListResponse> getProjects(
      ServiceCall call, EmptyRequest request) {
    // TODO: implement getProjects
    throw UnimplementedError();
  }

  @override
  Future<Project> updateProject(
      ServiceCall call, UpdateProjectRequest request) {
    // TODO: implement updateProject
    throw UnimplementedError();
  }
}
