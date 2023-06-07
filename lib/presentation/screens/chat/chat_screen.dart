import 'package:flutter/material.dart';
import 'package:yes_no_app/presentation/widgets/chat/her_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/chat/my_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/shared/message_field_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
              'https://www.publimetro.com.mx/resizer/qOPAyVltZIyO3-0Dj3pei65m2ts=/800x0/filters:format(jpg):quality(70)/cloudfront-us-east-1.images.arcpublishing.com/metroworldnews/QX36ZR2A6FHPTLPESHJV6HX2FI.jpg',
            ),
          ),
        ),
        title: const Text('Mi amor <3'),
        centerTitle: false,
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 100,
                reverse: true,
                itemBuilder: (context, index) {
                  return (index % 2 == 0
                      ? const MyMessageBubble()
                      : const HerMessageBubble());
                },
              ),
            ),
            const MessageFieldBox()
          ],
        ),
      ),
    );
  }
}
