

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatCard extends StatelessWidget {
  const ChatCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
       margin: const EdgeInsets.symmetric(vertical: 5),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.black.withOpacity(0.7),
        border: Border.all(color: Colors.redAccent, width: 2),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildHeaderRow(),
          const SizedBox(height: 8),
          // _buildMessageRow(),
          const SizedBox(height: 12),
          _buildImageButton(),
        ],
      ),
    );
  }

  Widget _buildHeaderRow() {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 24,
              backgroundImage: AssetImage('assets/demo/person.png'), // Profile picture
            ),
            const SizedBox(width: 8),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Floyd Miles',
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                          ),
                        ),
                        SizedBox(width: 10),
                        Icon(Icons.brightness_2, color: Colors.white, size: 12),
                        SizedBox(width: 4),
                        Icon(Icons.auto_awesome, color: Colors.white, size: 12),
                        SizedBox(width: 4),
                        Icon(Icons.favorite, color: Colors.white, size: 12),
                      ],
                    ),
                    SizedBox(width: Get.width-330,),
                     Text(
                      '4:30 PM',
                      style: GoogleFonts.montserrat(color: Colors.white70, fontSize: 10,fontWeight: FontWeight.w500),
                    ),
                  ],
                ),

                Row(
                  children: [
                    Text(
                      'Hello, are you here?',
                      style: GoogleFonts.poppins(color: Colors.white, fontSize: 12,fontWeight: FontWeight.w600),
                    ),

                    const SizedBox(width: 8),
                    const Icon(Icons.check, color: Colors.white),

                    Icon(Icons.cloud_outlined, color: Colors.white, size: 18),
                    SizedBox(width: 4),
                    Text(
                      '55%',
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                )


              ],
            ),

          ],
        ),

      ],
    );
  }

  // Widget _buildMessageRow() {
  //   return Row(
  //     children: [
  //       Text(
  //         'Hello, are you here?',
  //         style: TextStyle(color: Colors.white, fontSize: 16),
  //       ),
  //
  //       const SizedBox(width: 8),
  //       const Icon(Icons.check, color: Colors.white),
  //
  //       Icon(Icons.cloud_outlined, color: Colors.white, size: 18),
  //       SizedBox(width: 4),
  //       Text(
  //         '55%',
  //         style: TextStyle(color: Colors.white),
  //       )
  //     ],
  //   );
  // }

  Widget _buildImageButton() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(5),
      child: Stack(
        children: [
          Image.asset(
            'assets/demo/slide.png', // Replace with your cloud/sky background
            height: 40,
            width: double.infinity,
            fit: BoxFit.fill,
          ),
          Positioned(
            left: 16,
            top: 28,
            child: Icon(Icons.arrow_forward, size: 32, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
