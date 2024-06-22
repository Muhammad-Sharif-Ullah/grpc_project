import 'package:grpc/grpc.dart';
import 'package:grpc_services/src/generated/greet.pbgrpc.dart';

class GreeterService extends GreeterServiceBase {
  @override
  Future<HelloReply> sayHello(ServiceCall call, HelloRequest request) async {
    final reply = HelloReply()..message = 'Hi, How are you ${request.name}?';
    return await Future.value(reply);
  }
}
