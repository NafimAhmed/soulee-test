




import 'package:flutter/material.dart';

class CustomBottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [BoxShadow(blurRadius: 10, color: Colors.grey.shade300)],
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
          Row(
            children: [
              IconButton(icon: Icon(Icons.add), onPressed: () {}),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Say Hi",
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                  ),
                ),
              ),
              IconButton(icon: Icon(Icons.send, color: Colors.redAccent), onPressed: () {}),
            ],
          ),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final String text;
  const CustomButton({required this.text, required this.icon});
  
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.redAccent,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          icon,
          SizedBox(width: 5,),
          Text(text, style: TextStyle(color: Colors.white)),
        ],
      ),
    );
  }
}
