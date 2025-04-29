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

      body: Container(

        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/demo/chat_background.png'),fit: BoxFit.cover)
        ),

        child: Column(
          children: [
            SafeArea(
              child: CustomAppBar(),
            ),


            Expanded(
              child: ChatList(),
            ),


            // CustomBottomBar(),



          ],
        ),
      ),
    );
  }
}

class ChatList extends StatelessWidget {
  final List<MessageModel> messages = [
    MessageModel(
      text: "Cras eget placerat diam.",
      isMe: true,
      img: 'assets/demo/person1.png',
      time: '9:55',
    ),
    MessageModel(
      text: "Cras eget placerat diam.",
      isMe: false,
      img: 'assets/demo/person2.png',
      time: '',
    ),
    MessageModel(
      text: "Cras eget placerat diam.",
      isMe: true,
      img: 'assets/demo/person1.png',
      time: '9:55',
    ),
    MessageModel(
      text: "Cras eget placerat diam.",
      isMe: false,
      img: 'assets/demo/person3.png',
      time: '9:55',
    ),
    MessageModel(
      text: "Cras eget placerat diam.",
      isMe: true,
      img: 'assets/demo/person1.png',
      time: '9:55',
    ),
    MessageModel(
      text: "Cras eget placerat diam.",
      isMe: false,
      img: 'assets/demo/person2.png',
      time: '',
    ),
    MessageModel(
      text: "Cras eget placerat diam.",
      isMe: true,
      img: 'assets/demo/person1.png',
      time: '9:55',
    ),
    MessageModel(
      text: "Cras eget placerat diam.",
      isMe: false,
      img: 'assets/demo/person3.png',
      time: '9:55',
    ),

    // Add more messages
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: Get.height-350,
            child: ListView.builder(
              padding: EdgeInsets.all(12),
              itemCount: messages.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                final message = messages[index];
                return Row(
                  mainAxisAlignment: message.isMe==true ? MainAxisAlignment.end : MainAxisAlignment.start,
                  children: [
                    message.isMe==true ? SizedBox():Container(
                      height: 36,
                      width: 36,
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(image: AssetImage(message.img))
                      ),
                    ),



                    Container(
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

                    message.isMe!=true ? SizedBox():Container(
                      height: 36,
                      width: 36,
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(image: AssetImage(message.img))
                      ),
                    ),




                  ],
                );
              },
            ),
          ),
          Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.transparent,
              // boxShadow: [BoxShadow(blurRadius: 10, color: Colors.grey.shade300)],
            ),
            child: Column(
              children: [
                Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: [
                    CustomButton(text: "Movies", icon: Image.asset('assets/icons/movie.png',height: 16,width: 16,),),
                    CustomButton(text: "Quiz", icon: Image.asset('assets/icons/quize.png',height: 16,width: 16,),),
                    CustomButton(text: "Music", icon: Image.asset('assets/icons/music.png',height: 16,width: 16,),),
                    CustomButton(text: "NSFW",icon: Image.asset('assets/icons/nsfw.png',height: 16,width: 16,),),
                    CustomButton(text: "Synopsis", icon: Image.asset('assets/icons/music.png',height: 16,width: 16,),),
                    CustomButton(text: "Game", icon: Image.asset('assets/icons/game.png',height: 16,width: 16,),),
                    CustomButton(text: "Theme", icon: Image.asset('assets/icons/theme.png',height: 16,width: 16,),),
                    CustomButton(text: "Emoji", icon: Image.asset('assets/icons/emoji.png',height: 16,width: 16,),),
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    IconButton(
                        icon: Container(
                          height: 26,
                          width: 26,
                          decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.redAccent ),
                            child: Icon(Icons.close,color: Colors.white,),
                        ), onPressed: () {}),


                    IconButton(
                        icon: Container(
                          height: 26,
                          width: 26,
                          decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.redAccent ),
                          child: Icon(Icons.graphic_eq,color: Colors.white,),
                        ), onPressed: () {}),

                    IconButton(
                        icon: Container(
                          height: 26,
                          width: 26,
                          decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.redAccent ),
                          child: Icon(Icons.note_add_outlined,color: Colors.white,size: 15,),
                        ), onPressed: () {}),

                    IconButton(
                        icon: Container(
                          height: 26,
                          width: 26,
                          decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.redAccent ),
                          child: Icon(Icons.camera_alt,color: Colors.white,size: 15,),
                        ), onPressed: () {}),


                    Expanded(
                      child: SizedBox(
                        height: 40,
                        child: TextField(
                          decoration: InputDecoration(
                            isDense: true,
                            filled: true,
                            fillColor: Colors.white,
                            suffixIcon:  IconButton(icon: Container(
                              height: 32,
                              width: 32,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.redAccent
                              ),
                                child: Icon(Icons.send, color: Colors.white,size: 15,)), onPressed: () {}),
                            hintText: "Say Hi",
                            // isDense: true,
                            contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                      ),
                    ),

                      ],
                ),
              ],
            ),
          )



        ],
      ),
    );
  }
}

class MessageModel {
  final String text;
  final bool isMe;
  final String img;
  final String time;

  MessageModel({
    required this.text,
    required this.isMe,
    required this.img,
    required this.time,
  });
}
