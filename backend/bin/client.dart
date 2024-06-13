import 'package:backend/src/generated/greet.pbgrpc.dart';
import 'package:grpc/grpc.dart';

class Client {
  ClientChannel? channel;
  GreeterClient? stub;
}

void main() {
  final client = Client();
  client.channel = ClientChannel('localhost',
      port: 50051,
      options:
          const ChannelOptions(credentials: ChannelCredentials.insecure()));
  client.stub = GreeterClient(client.channel!,
      options: CallOptions(timeout: const Duration(seconds: 30)));
  final request = HelloRequest()..name = 'Sharif';
  client.stub!.sayHello(request).then((response) {
    print('Greeter client received: ${response.message}');
  }).whenComplete(() {
    client.channel!.shutdown();
  });
}
