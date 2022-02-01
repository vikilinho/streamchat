import 'package:flutter/material.dart';
import 'package:stream_chat_flutter/stream_chat_flutter.dart';
import 'package:stream_rive/userpage.dart';

void main() {
  final client = StreamChatClient(
    'q4uh332j4qgt',
    logLevel: Level.INFO,
  );
  runApp(MyApp(client: client));
}

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
    required this.client,
  }) : super(key: key);

  final StreamChatClient client;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      builder: (context, child) => StreamChat(
        client: client,
        child: child,
      ),
      home: const UsersPage(),
    );
  }
}
