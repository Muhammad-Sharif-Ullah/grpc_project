import 'package:backend/src/services/greet_service.dart';
import 'package:backend/src/services/project_services.dart';
import 'package:backend/src/services/task_services.dart';
import 'package:grpc/grpc.dart';

// create server Interceptor

Future<void> main(List<String> args) async {
  final server = Server.create(
    services: [
      GreeterService(),
      TaskServices(),
      ProjectServices(),
    ],
    interceptors: [],
    errorHandler: (error, stackTrace) {
      print('Error: $error');
      print(stackTrace);
    },
    codecRegistry: CodecRegistry(codecs: const [GzipCodec(), IdentityCodec()]),
  );
  await server.serve(port: 50051);
  server.lookupService('Greeter');
  print('Server listening on port ${server.port}...');
}

class LoggingInterceptor {
  dynamic interceptUnary(
      String method, dynamic request, CallOptions options, dynamic invoker) {
    print('LoggingInterceptor: interceptUnary');
    print('Method: $method');
    print('Request: $request');
    print('Options: $options');
    return invoker(method, request, options);
  }

  dynamic interceptStreaming(
      String method, Stream request, CallOptions options, dynamic invoker) {
    print('LoggingInterceptor: interceptStreaming');
    print('Method: $method');
    print('Request: $request');
    print('Options: $options');
    return invoker(method, request, options);
  }
}
