import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';
import 'package:intl/intl.dart';


import '../../../component/custom_appbar.dart';
import '../../../component/custom_bottom_bar.dart';
import '../controllers/chatroom_controller.dart';

class ChatroomView extends GetView<ChatroomController> {
  const ChatroomView({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(

      value: SystemUiOverlayStyle(
        statusBarColor: Colors.white, // Background color of status bar
        statusBarIconBrightness: Brightness.dark, // Icon/text color
      ),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          // appBar: AppBar(
          //   automaticallyImplyLeading: false,
          //   backgroundColor: Colors.white,
          // ),

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
                  child: ChatList(chatroomController: controller,),
                ),


                // CustomBottomBar(),



              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ChatList extends StatelessWidget {


  final ChatroomController chatroomController;

   RxList<MessageModel> messages = [
    MessageModel(
      text: "Cras eget placerat diam. Aliquam mauris libero, semper vel nisi non, suscipit.",
      isMe: true,
      img: 'assets/demo/person1.png',
      time: '9:55',
    ),
    MessageModel(
      text: "Cras eget placerat diam. Aliquam mauris libero, semper vel nisi non, suscipit.",
      isMe: false,
      img: 'assets/demo/person2.png',
      time: '',
    ),
    MessageModel(
      text: "Cras eget placerat diam. Aliquam mauris libero, semper vel nisi non, suscipit.",
      isMe: true,
      img: 'assets/demo/person1.png',
      time: '9:55',
    ),
    MessageModel(
      text: "Cras eget placerat diam. Aliquam mauris libero, semper vel nisi non, suscipit.",
      isMe: false,
      img: 'assets/demo/person3.png',
      time: '9:55',
    ),
    MessageModel(
      text: "Cras eget placerat diam. Aliquam mauris libero, semper vel nisi non, suscipit.",
      isMe: true,
      img: 'assets/demo/person1.png',
      time: '9:55',
    ),
    MessageModel(
      text: "Cras eget placerat diam. Aliquam mauris libero, semper vel nisi non, suscipit.",
      isMe: false,
      img: 'assets/demo/person2.png',
      time: '',
    ),
    MessageModel(
      text: "Cras eget placerat diam. Aliquam mauris libero, semper vel nisi non, suscipit.",
      isMe: true,
      img: 'assets/demo/person1.png',
      time: '9:55',
    ),
    MessageModel(
      text: "Cras eget placerat diam. Aliquam mauris libero, semper vel nisi non, suscipit.",
      isMe: false,
      img: 'assets/demo/person3.png',
      time: '9:55',
    ),

    // Add more messages
  ].obs;

   ChatList({super.key, required this.chatroomController});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: Get.height-350,
            child: Obx(()=>ListView.builder(
              padding: EdgeInsets.all(12),
              itemCount: messages.value.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                final message = messages.value[index];
                return



                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: message.isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
                        children: [
                          // Profile Image (Left for received messages)
                          if (!message.isMe)
                            Container(
                              height: 36,
                              width: 36,
                              margin: EdgeInsets.symmetric(horizontal: 5),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(image: AssetImage(message.img)),
                              ),
                            ),

                          // Message Container (Wraps content instead of fixed width)


                          Flexible(
                            child: Container(
                              margin: EdgeInsets.symmetric(vertical: 8),


                              child: Column(
                                crossAxisAlignment:message.isMe? CrossAxisAlignment.start:CrossAxisAlignment.end, // Align to end
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(12),
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
                                  SizedBox(height: 4), // Space between message and time
                                  Text(
                                    message.time,
                                    style: TextStyle(
                                      color: Colors.black54,
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),



                          // Flexible(
                          //   child: Column(
                          //     children: [
                          //       Container(
                          //         margin: EdgeInsets.symmetric(vertical: 8),
                          //         padding: EdgeInsets.all(12),
                          //         decoration: BoxDecoration(
                          //           color: message.isMe ? Colors.redAccent : Colors.white,
                          //           borderRadius: BorderRadius.circular(20),
                          //         ),
                          //         child: Text(
                          //           message.text,
                          //           style: TextStyle(
                          //             color: message.isMe ? Colors.white : Colors.black,
                          //             fontSize: 16,
                          //           ),
                          //         ),
                          //       ),
                          //
                          //       Row(
                          //         mainAxisSize: MainAxisSize.min,
                          //         mainAxisAlignment:
                          //         message.isMe ? MainAxisAlignment.start : MainAxisAlignment.end,
                          //         children: [
                          //           Text(
                          //             message.time,
                          //             style: TextStyle(
                          //               color: Colors.black54,
                          //               fontSize: 12,
                          //             ),
                          //           ),
                          //         ],
                          //       ),
                          //
                          //
                          //     ],
                          //   ),
                          // ),







                          // Profile Image (Right for sent messages)
                          if (message.isMe)
                            Container(
                              height: 36,
                              width: 36,
                              margin: EdgeInsets.symmetric(horizontal: 5),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(image: AssetImage(message.img)),
                              ),
                            ),
                        ],
                      ),

                      // Timestamp Row (Wraps content and stays aligned properly)

                    ],
                  );







                //   Column(
                //   children: [
                //     Row(
                //       mainAxisAlignment: message.isMe==true ? MainAxisAlignment.end : MainAxisAlignment.start,
                //       children: [
                //         message.isMe==true ? SizedBox():Container(
                //           height: 36,
                //           width: 36,
                //           margin: EdgeInsets.symmetric(horizontal: 5),
                //           decoration: BoxDecoration(
                //               shape: BoxShape.circle,
                //               image: DecorationImage(image: AssetImage(message.img))
                //           ),
                //         ),
                //
                //
                //
                //         Container(
                //           margin: EdgeInsets.symmetric(vertical: 8),
                //           width: Get.width-100,
                //           padding: EdgeInsets.all(16),
                //           decoration: BoxDecoration(
                //             color: message.isMe ? Colors.redAccent : Colors.white,
                //             borderRadius: BorderRadius.circular(20),
                //           ),
                //           child: Text(
                //             maxLines: 10,
                //             message.text,
                //             style: TextStyle(
                //               color: message.isMe ? Colors.white : Colors.black,
                //               fontSize: 16,
                //             ),
                //           ),
                //         ),
                //
                //         message.isMe!=true ? SizedBox():Container(
                //           height: 36,
                //           width: 36,
                //           margin: EdgeInsets.symmetric(horizontal: 5),
                //           decoration: BoxDecoration(
                //               shape: BoxShape.circle,
                //               image: DecorationImage(image: AssetImage(message.img))
                //           ),
                //         ),
                //
                //
                //
                //
                //       ],
                //     ),
                //     SizedBox(
                //       width: Get.width-100,
                //       child: Row(
                //         mainAxisAlignment:message.isMe ? MainAxisAlignment.start : MainAxisAlignment.end,
                //         children: [
                //           Text(
                //             maxLines: 1,
                //             message.time,
                //             style: TextStyle(
                //               color: Colors.black,
                //               fontSize: 16,
                //             ),
                //           ),
                //         ],
                //       ),
                //     )
                //   ],
                // );






              },
            ),)








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
                        child:


                        TextField(
                          controller: chatroomController.textEditingController,
                          decoration: InputDecoration(
                            isDense: true,
                            filled: true,
                            fillColor: Colors.white,
                            suffixIcon: IconButton(
                              icon: Transform.rotate(
                                angle: -30 * 3.1416 / 180, // 30 degrees in radians
                                child: Container(
                                  height: 32,
                                  width: 32,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.redAccent,
                                  ),
                                  child: Icon(Icons.send, color: Colors.white, size: 15),
                                ),
                              ),


                              onPressed: () {

                                debugPrint('+++++++++++++++++Meaagae sent+++++++++++++++++');
                                messages.value.add(
                                  MessageModel(
                                    text: "${chatroomController.textEditingController.text}",
                                    isMe: true,
                                    img: 'assets/demo/person3.png',
                                    time: '${DateFormat('hh:mm a').format(DateTime.now())}',
                                  ),
                                );

                                messages.refresh();
                                chatroomController.textEditingController.clear();





                              },



                            ),
                            hintText: "Say Hi",
                            contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(color: Colors.red), // Red border
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(color: Colors.red), // Red border when enabled
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(color: Colors.red, width: 2), // Red border when focused
                            ),
                          ),
                        ),



                        // TextField(
                        //   decoration: InputDecoration(
                        //     isDense: true,
                        //     filled: true,
                        //     fillColor: Colors.white,
                        //     suffixIcon:  IconButton(
                        //       icon: Transform.rotate(
                        //         angle: -30 * 3.1416 / 180, // Convert 30 degrees to radians
                        //         child: Container(
                        //           height: 32,
                        //           width: 32,
                        //           decoration: BoxDecoration(
                        //             shape: BoxShape.circle,
                        //             color: Colors.redAccent,
                        //           ),
                        //           child: Icon(Icons.send, color: Colors.white, size: 15),
                        //         ),
                        //       ),
                        //       onPressed: () {},
                        //     ),
                        //     hintText: "Say Hi",
                        //     // isDense: true,
                        //     contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                        //     border: OutlineInputBorder(
                        //       borderRadius: BorderRadius.circular(20),
                        //         borderSide: BorderSide(color: Colors.red),
                        //
                        //     ),
                        //
                        //   ),
                        // ),




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
