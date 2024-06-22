import 'package:grpc/grpc.dart';
import 'package:grpc_services/src/generated/task.pbgrpc.dart';

class ProjectServices extends ProjectServiceBase {
  @override
  Future<Project> createProject(
      ServiceCall call, CreateProjectRequest request) {
    // TODO: implement createProject
    throw UnimplementedError();
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
