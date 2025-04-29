



import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white
      ),
      padding: const EdgeInsets.all(12.0),
      child: Row(
        children: [
          CircleAvatar(
            radius: 28,
            backgroundImage: AssetImage('assets/profile_cat.png'), // Profile image
          ),
          SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Guy Hawkins', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),


                SizedBox(
                  width: Get.width-220,

                  child: Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children: [
                      Container(
                        height: 26,
                        padding: EdgeInsets.symmetric(horizontal: 5,vertical: 2),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.red
                        ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Image.asset('assets/icons/white_chat.png',height: 16,width: 16,),
                              SizedBox(width: 5,),
                              Text('54',style: GoogleFonts.poppins(fontWeight: FontWeight.w400,fontSize: 12,color: Colors.white,)),
                            ],
                          ),
                      ),



                      Container(
                        height: 26,
                        padding: EdgeInsets.symmetric(horizontal: 5,vertical: 2),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.red
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset('assets/icons/calender.png',height: 16,width: 16,),
                            SizedBox(width: 5,),
                            Text('1',style: GoogleFonts.poppins(fontWeight: FontWeight.w400,fontSize: 12,color: Colors.white,)),
                          ],
                        ),
                      ),

                      Container(
                        height: 26,
                        width: 26,
                        alignment: Alignment.center,
                        //padding: EdgeInsets.symmetric(horizontal: 5,vertical: 2),
                        decoration: BoxDecoration(

                          shape: BoxShape.circle,
                            // borderRadius: BorderRadius.circular(20),
                            color: Colors.red
                        ),
                        child: Icon(Icons.info,color: Colors.white,size: 15,)
                      ),


                      Container(
                          height: 26,
                          width: 26,
                          alignment: Alignment.center,
                          //padding: EdgeInsets.symmetric(horizontal: 5,vertical: 2),
                          decoration: BoxDecoration(

                              shape: BoxShape.circle,
                              // borderRadius: BorderRadius.circular(20),
                              color: Colors.red
                          ),
                          child: Icon(Icons.call,color: Colors.white,size: 15,)
                      ),

                      Container(
                          height: 26,
                          width: 26,
                          alignment: Alignment.center,
                          //padding: EdgeInsets.symmetric(horizontal: 5,vertical: 2),
                          decoration: BoxDecoration(

                              shape: BoxShape.circle,
                              // borderRadius: BorderRadius.circular(20),
                              color: Colors.red
                          ),
                          child: Icon(Icons.videocam_outlined,color: Colors.white,size: 15,)
                      ),

                      Container(
                        height: 26,
                        padding: EdgeInsets.symmetric(horizontal: 5,vertical: 2),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.red
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.person_2_outlined,color: Colors.white,size: 15,),
                            SizedBox(width: 5,),
                            Icon(Icons.sync,color: Colors.white,size: 15,),
                          ],
                        ),
                      ),

                    ],
                  ),
                ),





                // Row(
                //   children: [
                //     Icon(Icons.message, color: Colors.red),
                //     Text('54'),
                //     SizedBox(width: 8),
                //     Icon(Icons.calendar_today, color: Colors.red),
                //     Text('1'),
                //     SizedBox(width: 8),
                //     Icon(Icons.error_outline, color: Colors.red),
                //   ],
                // )
                //



              ],
            ),
          ),
          Icon(Icons.settings, color: Colors.red),
        ],
      ),
    );
  }
}
