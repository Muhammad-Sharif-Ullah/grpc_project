import 'package:backend/src/generated/greet.pbgrpc.dart';
import 'package:grpc/grpc.dart';

class GreeterService extends GreeterServiceBase {
  @override
  Future<HelloReply> sayHello(ServiceCall call, HelloRequest request) async {
    final reply = HelloReply()..message = 'Hi, How are you ${request.name}?';
    return await Future.value(reply);
  }
}
