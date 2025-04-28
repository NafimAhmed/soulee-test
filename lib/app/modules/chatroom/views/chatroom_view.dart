import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../component/custom_appbar.dart';
import '../../../component/custom_bottom_bar.dart';
import '../controllers/chatroom_controller.dart';

class ChatroomView extends GetView<ChatroomController> {
  const ChatroomView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            CustomAppBar(),       // Top profile and icons
            Expanded(child: ChatList()),   // Messages
            CustomBottomBar(),    // Text input + buttons
          ],
        ),
      ),
    );

  }
}

class ChatList extends StatelessWidget {
  final List<MessageModel> messages = [
    MessageModel(text: "Cras eget placerat diam.", isMe: false),
    MessageModel(text: "Cras eget placerat diam.", isMe: true),
    // Add more messages
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.all(12),
      itemCount: messages.length,
      itemBuilder: (context, index) {
        final message = messages[index];
        return Align(
          alignment: message.isMe ? Alignment.centerRight : Alignment.centerLeft,
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 8),
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: message.isMe ? Colors.redAccent : Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              message.text,
              style: TextStyle(
                color: message.isMe ? Colors.white : Colors.black,
                fontSize: 16,
              ),
            ),
          ),
        );
      },
    );
  }
}

class MessageModel {
  final String text;
  final bool isMe;

  MessageModel({required this.text, required this.isMe});
}

