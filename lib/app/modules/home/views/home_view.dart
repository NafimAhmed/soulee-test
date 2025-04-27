import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          margin: EdgeInsets.only(left: 16),
            child: Image.asset('assets/icons/logo.png',height: 35,width: 76,)),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.keyboard_arrow_down))
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: [

                IconButton(onPressed: (){}, icon: Image.asset('assets/icons/home.png',height: 32,width: 32,)),
                IconButton(onPressed: (){}, icon: Image.asset('assets/icons/run.png',height: 32,width: 32,)),
                IconButton(onPressed: (){}, icon: Image.asset('assets/icons/round.png',height: 32,width: 32,)),
                IconButton(onPressed: (){}, icon: Image.asset('assets/icons/chat.png',height: 32,width: 32,)),
                IconButton(onPressed: (){}, icon: Image.asset('assets/icons/notification.png',height: 32,width: 32,)),
                IconButton(onPressed: (){}, icon: Image.asset('assets/icons/more.png',height: 32,width: 32,)),
              ],

            )

          ],
        ),
      )
    );
  }
}
