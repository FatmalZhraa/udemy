import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:udemy/Commponents/coursepic.dart';

class Course extends StatelessWidget{
  late String topic;
  late  List<CoursePic> L;
  Course(this.topic, this.L);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return 
       Container(
        alignment: Alignment.topLeft,
       margin: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.06),
        height: MediaQuery.of(context).size.height*0.5,
        width: MediaQuery.of(context).size.width,
        color: Colors.black,
         child: Column(
          children: [
            Row(
              children: [
                Text('Top courses in',
                style: GoogleFonts.openSans(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                ),

                Text(topic,
                style: GoogleFonts.openSans(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 182, 91, 198),
                ),
                ),
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height*0.03,),
             SingleChildScrollView(
            scrollDirection: Axis.horizontal,
              child: 
              Row(
             mainAxisAlignment: MainAxisAlignment.start,
             children: [
              for(int i=0;i<L.length;i++)
             // SizedBox(width: MediaQuery.of(context).size.width*0.5,),
                L[i],
                
                        ],
                      )
                    ,
                  ),
          ],
             ),
       );
  }
}