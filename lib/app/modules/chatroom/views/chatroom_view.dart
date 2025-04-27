import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/chatroom_controller.dart';

class ChatroomView extends GetView<ChatroomController> {
  const ChatroomView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ChatroomView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'ChatroomView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
