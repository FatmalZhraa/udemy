import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoDesign extends StatelessWidget{
  late String c;
  CategoDesign(this.c);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.03,bottom: MediaQuery.of(context).size.height*0.03),
      width: MediaQuery.of(context).size.width*0.55,
      height: MediaQuery.of(context).size.height*0.029,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        border: Border.all(
          width: 1.5,
          color: Colors.white
        )
      ),
      alignment: Alignment.center,
      child: Text(c,
      style: GoogleFonts.openSans(
        fontSize: 17,
        fontWeight: FontWeight.bold,
        color: Colors.white
      ),
      ),
    );
  }
}