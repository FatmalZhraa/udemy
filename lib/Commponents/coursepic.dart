import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CoursePic extends StatelessWidget{
  late AssetImage pic;
  late String price;
  late String rate;
  late String instr;
  late String cou;
  List <IconData> L=[Icons.star,Icons.star,Icons.star,Icons.star,Icons.star];
  CoursePic(this.rate,this.instr,this.pic,this.price,this.cou);
  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.045),
      child: Column(mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: MediaQuery.of(context).size.height*0.22,
              width: MediaQuery.of(context).size.width*0.55,
              decoration: const BoxDecoration(
                borderRadius:  BorderRadius.all(Radius.circular(100))
              ),
              child: Image(image: pic,
              fit: BoxFit.cover,
              ),
            ),
           Text(cou,
           style: GoogleFonts.openSans(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
           ),
           Text(instr,
           style: GoogleFonts.openSans(
                  fontSize: 15,
                  color: Colors.grey,
                ),
           ),
           Row(
            children: [
              Text(rate,
              style: TextStyle(
                color: Colors.amber[700],
                fontSize: 14,
              ),
              ),
              SizedBox(width: MediaQuery.of(context).size.width*0.002,),
              Row(
                children: [
                    for(int i=0;i<L.length;i++)
                    Icon(L[i],
                    color: Colors.amber[700],
                    size: 15,
                    ),
                ],
              ),
              Text('(78)',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 13,
              ),
              )
            ],
           ),
           Text(price,
           style:const TextStyle(
            color: Colors.white,
            fontSize: 15,
            fontWeight: FontWeight.bold,
           ),
           ),
           Container(
            height: MediaQuery.of(context).size.height*0.035,
            width: MediaQuery.of(context).size.width*0.17,
            decoration: BoxDecoration(
              color: Colors.amber[700],
              borderRadius:const BorderRadius.all(Radius.circular(10))
            ),
            alignment: Alignment.center,
            child: const Text('Bestseller',
            style: TextStyle(
              fontWeight: FontWeight.bold,
    
            ),
            ),
           )
          ],
        ),
    );
  }
}