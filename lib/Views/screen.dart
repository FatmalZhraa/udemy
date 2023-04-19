import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:udemy/Commponents/containerscatego.dart';
import 'package:udemy/Commponents/course.dart';
import 'package:udemy/Commponents/coursepic.dart';

class HomeScreen extends StatefulWidget{

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
int indexx=0;
class _HomeScreenState extends State<HomeScreen> {
List<IconData>i=[Icons.star,Icons.search,Icons.play_arrow_outlined,Icons.favorite,Icons.account_circle_outlined];
List<CoursePic> C_design=[
  CoursePic('4.8', 'Mr.Adam', const AssetImage('assests/c1.jpeg'), 'EGP 280', 'Drawing course'),
  CoursePic('4.8', 'Mr.Ragnar', const AssetImage('assests/c3.jpg'), 'EGP 500', 'PS course'),
  CoursePic('4.8', 'Mr.Ramez', const AssetImage('assests/c4.jpeg'), 'EGP 1000', 'Blinder 3D course')
];
List<CoursePic> C_bussiness=[
  CoursePic('4.8', 'Mr.Adam', const AssetImage('assests/b3.png'), 'EGP 280', 'The Complete Business \nPlane Course'),
  CoursePic('4.8', 'Mr.Ragnar', const AssetImage('assests/b2.jpeg'), 'EGP 500', 'How To Start A Business\n From Business Idea'),
  CoursePic('4.8', 'Mr.Ramez', const AssetImage('assests/b1.jpeg'), 'EGP 1000', 'Business Lesson \nFrom a CEO')
];
List<CoursePic> C_development=[
  CoursePic('4.6', 'Jose Portilla', const AssetImage('assests/course5.jpg'), 'EGP 280', 'The Complete Python \nBootcamp'),
  CoursePic('4.7', 'Ai Sweigart', const AssetImage('assests/course3.jpg'), 'EGP 500', 'Machine Learning A-Z: Ai,\nPython& R+ChatGpt'),
  CoursePic('4.5', 'Kirill , Hadelin', const AssetImage('assests/course4.jpg'), 'EGP 1000', '100 Days of code:The\n Complete Python')
];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color.fromARGB(0, 28, 29, 0),
      appBar:AppBar(
        backgroundColor: const Color.fromARGB(0, 28, 29, 0),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
          Text('Sign in',
          style: GoogleFonts.openSans(
            fontSize: 23,
            fontWeight: FontWeight.bold
          ),
          )
        ]
        ),
      ) ,
      body: 
        Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height*0.8,
              child: ListView(
                  scrollDirection: Axis.vertical,
                  children: 
                [
                  Column(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height*0.055,
                        color: const Color.fromARGB(255, 194, 55, 218),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Future ready-skills on your schedule',
                            style: GoogleFonts.openSans(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                            ),
                            ),
                            const SizedBox(width: 40,),
                            Icon(Icons.close_rounded,
                           color: Colors.white,
                           size: MediaQuery.of(context).size.width*0.05,
                           )
                          ],
                        ),
                      ),
                  Container(
                    height: MediaQuery.of(context).size.height*0.28,
                    width: MediaQuery.of(context).size.width,
                    child: const Image(image: AssetImage('assests/cover.jpg'),
                    fit: BoxFit.fill,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.01,left: MediaQuery.of(context).size.width*0.02),
                    child: Text('Learning that Fits',
                              style: GoogleFonts.openSans(
                                fontSize: 33,
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                              ),
                              ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.002,left: MediaQuery.of(context).size.width*0.02),
                    child:Text('Skills for your present (and Future)',
                              style: GoogleFonts.openSans(
                                fontSize: 16,
                                color: Colors.white
                              ),
                              ),    
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height*0.003,),
                    Container(
                      margin:EdgeInsets.only(top: MediaQuery.of(context).size.height*0.004,left: MediaQuery.of(context).size.width*0.05),
                      child: Row(
                        children: [
                          Text('Categories',
                                style: GoogleFonts.openSans(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white
                                ),
                                ),
                       SizedBox(width: MediaQuery.of(context).size.width*0.35,),
                        Text('see all',
                        style: GoogleFonts.openSans(
                          fontSize: 15,
                          color: const Color.fromARGB(255, 199, 71, 221),
                          fontWeight: FontWeight.bold,
                        ),
                        )
                        ],
                      ),
                    ),
                    SizedBox(height:MediaQuery.of(context).size.height*0.004,),
                    Container(
                      alignment: Alignment.topLeft,
                      height: MediaQuery.of(context).size.height*0.084,
                      color: Colors.black,
                      child: 
                          Row(
                            children: [
                              Expanded(
                                child: ListView(
                                  scrollDirection: Axis.horizontal,
                                  children: [
                                 CategoDesign('IT & Software'),
                                CategoDesign('Bussinese'),
                                CategoDesign('Office Productivity'),
                                CategoDesign('Lifestyle'),
                                CategoDesign('Design'),
                                CategoDesign('Music'),
                                  ],
                                ),
                              )
                            ],
                          )
                    ),
                     Container(
                      alignment: Alignment.topLeft,
                      height: MediaQuery.of(context).size.height*0.084,
                      color: Colors.black,
                      child: 
                          Row(
                            children: [
                              Expanded(
                                child: ListView(
                                  scrollDirection: Axis.horizontal,
                                  children: [
                                 CategoDesign('Devlopment'),
                                CategoDesign('Marketing'),
                                CategoDesign('Finance & Accounting'),
                                CategoDesign('Lifestyle'),
                                CategoDesign('Personal Devlopment'),
                                CategoDesign('Music'),
                                  ],
                                ),
                              )
                            ],
                          )
                    ),
                  Course( 'Design',C_design),
                  Course( 'Bussiness',C_bussiness),
                  Course( 'Develop',C_development),
                    ]
                ,),
                ],
                  ),
            ),
        BottomNavigationBar(
          currentIndex: indexx,
          onTap: (index) =>setState(()=>indexx=index) ,
          backgroundColor: Colors.black,
          items: const [
            BottomNavigationBarItem(icon: 
            Icon(Icons.star,
            color: Colors.white,
            size: 20,
            ),
            label: 'Featured',
            backgroundColor: Colors.black
            ),
            BottomNavigationBarItem(icon: 
            Icon(Icons.search,
            color: Colors.white,
            size: 20,
            ),
            label: 'Search',
            backgroundColor: Colors.black,
            ),
            BottomNavigationBarItem(icon: 
            Icon(Icons.play_circle_fill_outlined,
            color: Colors.white,
            size: 20,
            ),
            label: 'My learning',
            backgroundColor: Colors.black
            ),
           BottomNavigationBarItem(icon: 
            Icon(Icons.favorite,
            color: Colors.white,
            size: 20,
            ),
            label: 'wishlist',
         backgroundColor:Colors.black,
            ),
            BottomNavigationBarItem(icon: 
            Icon(Icons.account_circle_outlined,
            color: Colors.white,
            size: 20,
            ),
            label: 'Account',
            backgroundColor: Colors.black
            )
          ]
          )
          ],
        ),
    );
  }
}