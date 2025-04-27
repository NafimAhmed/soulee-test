import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: Column(
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
      )
    );
  }
}
