import 'package:grpc/grpc.dart';

Future<void> main(List<String?> args) async {
  /// check if the arguments are passed in the command line or else use the default values
  String argProt = args.isNotEmpty ? args[0] ?? "50051" : "50051";
  String argHost = args.length > 1 ? args[1] ?? "localhost" : "localhost";

  /// PORT
  int port = int.parse(String.fromEnvironment('PORT', defaultValue: argProt));

  /// HOST
  String host = String.fromEnvironment('HOST', defaultValue: argHost);

  ///Server instance
  final server = Server.create(
    services: [GreetService()],
  );
  await server.serve(port: port, address: host).onError((error, stackTrace) {
    print('Error: $error');
    print('Stack Trace: $stackTrace');
  }).then((value) {
    print('Server started on port: $host:$port');
  });
}
