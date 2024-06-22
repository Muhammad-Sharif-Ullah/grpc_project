import 'package:backend/src/generated/task.pbgrpc.dart';
import 'package:grpc/grpc.dart';

class Client {
  ClientChannel? channel;
  ProjectServiceClient? stub;
}

void main() {
  final client = Client();
  client.channel = ClientChannel('localhost',
      port: 50051,
      options:
          const ChannelOptions(credentials: ChannelCredentials.insecure()));
  client.stub = ProjectServiceClient(client.channel!,
      options: CallOptions(timeout: const Duration(seconds: 30)));
  // final project = Project();
  // project.name = "Task Manager";
  // project.description = "A simple task manager";
  // project.status = Status.IDLE;
  // project.priority = Priority.LOW;
  // project.createAt = Timestamp.fromDateTime(DateTime.now());
  // project.updateAt = Timestamp.fromDateTime(DateTime.now());
  // project.createUser = TaskUser(
  //   user: User()
  //     ..id = 1
  //     ..name = 'Sharif'
  //     ..email = 'sharif.dev.bd@gmial.com'
  //     ..avatar = 'https://avatars.githubusercontent.com/u/11681209?v=4',
  //   permissions: [],
  // );
  CreateProjectRequest newProject = CreateProjectRequest(
    name: 'Task Manager',
    description: 'A simple task manager',
    // status: Status.IDLE,
    // priority: Priority.LOW,
    createUserId: 1,
  );
  client.stub!.createProject(newProject).then((value) {
    print('Project created: ${value.name}');
  }).catchError((error) {
    print('Error: $error');
  }).whenComplete(() {
    client.channel!.shutdown();
  });
}
