import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/article.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'connexion.dart';
import 'accuit.dart';
import 'inscription.dart';

// import 'inscription.dart';
// import 'accuit.dart';

void main() {
  runApp(const MyApp()); 
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

       title: 'apk',
       theme: ThemeData(
        fontFamily: 'ProductSans',
       ),
       debugShowCheckedModeBanner: false,  
       home: SplashScreen(),
    );
    
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        centered: true,
        splash: SizedBox(
          height: 500,
          width: 500,
          child: Container(
            height: 100,
            width: 100,
            child: Image.asset(
              'assets/image/testrefait.png',
              height: 300,
              width: 300,
              fit: BoxFit.cover,
            ),
          ),
        ),
        backgroundColor: Colors.grey.shade200,
        nextScreen: page());
  }
}


class page extends StatefulWidget {
  const page({super.key});



  @override
  State<page> createState() => _pageState();
}

class _pageState extends State<page> {

PageController _controller =  PageController();

bool onLasrPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
          controller: _controller,
          onPageChanged: (index) {
            setState(() {
              onLasrPage = (index == 2);
            });
          },
          children: [
            Container(
             color: Color(0xFFF6F6F6),
             child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/image/testrefait.png',height: 150.0,width: 150.0,),
                  SizedBox(height: 15,),
                  Text('MASTERCLASS',style: TextStyle(color: Colors.yellow, fontSize: 30),),
                  SizedBox(height: 10,),
                  Container(
                    padding: EdgeInsets.all(10),
                    child:  Text("Lorem Ipsum est simplement un faux texte de l'industrie de l'impression et de la composition."),

                  ),

                  // Text("Lorem Ipsum est simplement un faux texte de l'industrie de "),
                ],
              ),
             ),
            ),
            Container(
             color: Color(0xFFF6F6F6),
             child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/image/illustration.png',height: 150.0,width: 150.0,),
                  SizedBox(height: 15,),
                  Text('MASTERCLASS',style: TextStyle(color: Colors.yellow, fontSize: 30),),
                  SizedBox(height: 10,),
                  Container(
                    padding: EdgeInsets.all(10),
                    child:  Text("Lorem Ipsum est simplement un faux texte de l'industrie de l'impression et de la composition."),

                  ),

                  // Text("Lorem Ipsum est simplement un faux texte de l'industrie de "),
                ],
              ),
             ),
            ),
            Container(
             color: Color(0xFFF6F6F6),
             child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/image/buffet.png',height: 150.0,width: 150.0,),
                  SizedBox(height: 15,),
                  Text('MASTERCLASS',style: TextStyle(color: Colors.yellow, fontSize: 30),),
                  SizedBox(height: 10,),
                  Container(
                    padding: EdgeInsets.all(10),
                    child:  Text("Lorem Ipsum est simplement un faux texte de l'industrie de l'impression et de la composition."),

                  ),

                  // Text("Lorem Ipsum est simplement un faux texte de l'industrie de "),
                ],
              ),
             ),
            ),
          ],
        ),
        Container(
          alignment: Alignment(0, 0.75),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(onPressed: () {
                _controller.nextPage(
                  duration: Duration(milliseconds: 500),
                 curve: Curves.easeIn,);
              }, 
              icon: Icon( Icons.arrow_back, color: Colors.black, size: 20.0,),
              ),
              SmoothPageIndicator(
                controller: _controller,
                count: 3,
                effect:SlideEffect(
                  spacing : 8,
                  dotWidth : 10,
                  dotHeight : 3,
                  
                ),
              ),
              onLasrPage
               ?
              InkWell(
                onTap: () {
                        Navigator.push(context,MaterialPageRoute(builder: (context) => const Home()),);
                },
                child: Text('contunier')
                )
               :IconButton(onPressed: () {
                _controller.nextPage(
                  duration: Duration(milliseconds: 500),
                 curve: Curves.easeIn,);
              },
               icon: Icon( Icons.arrow_forward, color: Colors.black, size: 20.0,),
               ),
            ],
          )
          )
        ],
      ),
    );
  }
}


//               // Container(

//               // )
//             ], 
//           ),
//           //  child: Image.asset('assets/image/image2.jpg'),  //  ,
//          ),
//         // bottomNavigationBar: NavigationBar(
//         // destinations: const [NavigationDestination(icon: Icon(Icons.home), label: 'home'),
//         //                      NavigationDestination(icon: Icon(Icons.person), label: 'user')]), 
// );
//   }
  
  
// }



// // Widget sectioninout = Container(
// //   child:  ElevatedButton(
// //                                onPressed: () {},
// //                                child: const Text('Login '),
// // )
// //   );