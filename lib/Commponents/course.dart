import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:udemy/Commponents/coursepic.dart';

class CourseDesign extends StatelessWidget{
  List<CoursePic> co=[
    CoursePic('4.8', 'Mr.Adam', const AssetImage('assests/c1.jpeg'), 'EGP 280', 'Drawing course'),
    CoursePic('4.8', 'Mr.Ragnar', const AssetImage('assests/c3.jpg'), 'EGP 500', 'PS course'),
    CoursePic('4.8', 'Mr.Ramez', const AssetImage('assests/c4.jpeg'), 'EGP 1000', 'Blinder 3D course')
  ];
  late String topic;
  late String topic2;
  CourseDesign(this.topic,this.topic2, {super.key});
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
                Text(topic,
                style: GoogleFonts.openSans(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                ),
           
                Text(topic2,
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
              for(int i=0;i<co.length;i++)
             // SizedBox(width: MediaQuery.of(context).size.width*0.5,),
                co[i],
                
                        ],
                      )
                    ,
                  ),
          ],
             ),
       );
  }
}