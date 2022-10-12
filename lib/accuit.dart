
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter_application_1/article.dart';
import 'package:flutter_application_1/scrolle.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';

class SnackBarDemo extends StatelessWidget {
  const SnackBarDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Masterclass',
      home: principal(),
    );
  }
}
class principal extends StatefulWidget {
  const principal({super.key});

  @override
  State<principal> createState() => _principalState();
}

class _principalState extends State<principal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
       
       appBar: AppBar(
                iconTheme: IconThemeData(color: Colors.black),
                elevation: 5.0,
                backgroundColor: Colors.white,
                leading: InkWell(
                   onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const principal(),));
                   },
                   child: Icon(Icons.menu)),
                actions: [
                  InkWell(
                    onTap: () {},
                    child: Icon(Icons.notifications_none_rounded),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  InkWell(
                    onTap: (() {}),
                    child: Icon(Icons.shopping_cart_outlined),
                  ),
                  SizedBox(
                    width: 25,
                  )
                ],
      ),
        
        body: 
        
         ListView(
          children: [
             Container(
              padding: EdgeInsets.only(top: 15),
                child: Row(
                  
                  children: [
                    SizedBox(width: 15,),
                    Container(
                      color: Color(0xFFF6F6F6),
                       width: 300,
                       height: 40,
                       child: TextFormField(
                              // ignore: prefer_const_constructors
                              decoration: InputDecoration(
                                // labelText: 'Email',
                                hintText: 'Search',
                                border: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(5)),borderSide: BorderSide(color: Colors.transparent) ),
                                prefixIcon: const Icon( Icons.search, color: Colors.black, size: 20.0,),
                         ),
                      ),  
                    ),
                    const SizedBox(width: 5,),
                    Container(
                                  height: 40,width: 40,
                                  decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(5)),
                                    color: Color(0xFFF6F6F6),
                                    ),
                                    child: const Icon(Icons.filter_alt_outlined),
                                ),
                  ],
            )
           
          
          ),
          SizedBox(height: 5,),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:  [
                  Text('TRENDING PRODUIT',style: TextStyle(fontWeight: FontWeight.bold,),),
                  SizedBox(width: 20,),
                  Container( width: 130,height: 1,color: Colors.black, ),
                  // Divider(color: Color.fromARGB(255, 43, 40, 40), height: 50, ),
                  SizedBox(width: 30,),
                  Text('See All',style: TextStyle(color: Color.fromARGB(255, 5, 53, 92)),),
                ],
              ),
               SizedBox(
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children:  [
                    GestureDetector (
                      onTap: () {
                       Navigator.push(context,MaterialPageRoute(builder: (context) => article(
                        txt: 'une montre',
                        image: "assets/image/montrepng.png",
                        txt2: '1000f')),); 
                      },
                      child: AbsorbPointer(
                        child: scrolle(
                          txt: 'deco',
                          image: "assets/image/montrepng.png",
                          txt2: '1000f'),
                      ),
                    ),
                    GestureDetector(
                      behavior: HitTestBehavior.translucent,
                      onTap: () {
                        Navigator.push(context,MaterialPageRoute(builder: (context) => article(
                        txt: 'deco',
                        image: "assets/image/petitmeuble.png",
                        txt2: '1000f')),);
                        
                      },
                      child: AbsorbPointer(
                        child: scrolle(
                          txt: 'une montre',
                          image: "assets/image/petitmeuble.png",
                          txt2: '1000f'),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,MaterialPageRoute(builder: (context) => const article(
                        txt: 'table',
                        image: "assets/image/buffet.png",
                        txt2: '1000f')),);
                      },
                      child: AbsorbPointer(
                        child: scrolle(
                          txt: 'table',
                          image: "assets/image/buffet.png",
                          txt2: '1000f'),
                      ),
                    ),
                  ],
                ),
                ),
                SizedBox(height: 5,),
                Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:  [
                  Text('TRENDING PRODUIT',style: TextStyle(fontWeight: FontWeight.bold,),),
                  SizedBox(width: 20,),
                  Container( width: 130,height: 1,color: Colors.black, ),
                  // Divider(color: Color.fromARGB(255, 43, 40, 40), height: 50, ),
                  SizedBox(width: 30,),
                  Text('See All',style: TextStyle(color: Color.fromARGB(255, 5, 53, 92)),),
                ],
              ),
              SizedBox(
                height: 50,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children:  [
                    buttom(
                      txt: 'accuit', 
                      color: Colors.white, 
                      bgcolor: Colors.black,
                      ),
                    buttom(
                      txt: 'voiture et maison', 
                      color: Colors.white, 
                      bgcolor: Colors.grey,
                      ),
                    buttom(
                      txt: 'cours et corrections', 
                      color: Colors.white, 
                      bgcolor: Colors.grey,
                      ),
                    buttom(
                      txt: 'sujet', 
                      color: Colors.white, 
                      bgcolor: Colors.grey,
                      ),
                    
                  ],
                ),
                ),
              
                SizedBox(
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children:  [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,MaterialPageRoute(builder: (context) => const article(
                        txt: 'une voiture',
                        image: "assets/image/illustration.png",
                        txt2: '1000f')),);
                      },
                      child: AbsorbPointer(
                        child: scrolle(
                          txt: 'une voiture',
                          image: "assets/image/illustration.png",
                          txt2: '1000f'),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,MaterialPageRoute(builder: (context) => const article(
                        txt: 'une table',
                        image: "assets/image/buffet.png",
                        txt2: '1000f')),);
                      },
                      child: AbsorbPointer(
                        child: scrolle(
                          txt: 'une table',
                          image: "assets/image/buffet.png",
                          txt2: '1000f'),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,MaterialPageRoute(builder: (context) => const article(
                        txt: 'une montre',
                        image: "assets/image/montrepng.png",
                        txt2: '1000f')),);
                      },
                      child: AbsorbPointer(
                        child: scrolle(
                          txt: 'une montre',
                          image: "assets/image/montrepng.png",
                          txt2: '1000f'),
                      ),
                    ),
                  ],
                ),
                ),
            ],
          )
          ],
 
        ),
              floatingActionButton: const FloatingActionButton(

               onPressed: null,
               child: Icon(Icons.camera_alt_outlined),
               backgroundColor: Colors.black,
          ),
          bottomNavigationBar: BottomAppBar(
            shape: CircularNotchedRectangle(),
            // color: Colors.red,
            notchMargin: 5,
            clipBehavior: Clip.antiAlias,
            child: BottomNavigationBar(items: const [
              BottomNavigationBarItem(icon:   Padding(
                padding: EdgeInsets.only(right: 130),
                child: Icon(Icons.home,color: Colors.black,),
              ), label: ""),
              
              BottomNavigationBarItem(icon: Padding(
                padding: EdgeInsets.only(left: 130),
                child: Icon(Icons.person,color: Colors.grey,),
              ), label: ""),
            ]),
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
         
    );
  }
}

// class principal extends StatefulWidget {
//   const principal({super.key});

//   @override
//   State<principal> createState() => _principalState();
// }

// GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

// class _principalState extends State<principal> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       key: _scaffoldKey,
//       drawer: Drawer(
//               width: 230,
//       child: ListView(
//         children:  [
//               DrawerHeader(
//               decoration: const BoxDecoration(
               
//               ),
//               child: Row(
//                 children:  const [
//                   CircleAvatar(
//                     radius: 30,

//                     backgroundImage: AssetImage("assets/image/lezer.jpeg"),
//                   ),
//                   // Image(image: AssetImage('assets/image/testrefait.png'),height: 60,width: 60,),
//                   SizedBox(width: 10,),
//                   Text('MASTERCLASSE'),
//                 ],
//               ),    
//            ),
//            const Divider(
//             height: 20,
//             color: Colors.black,
//            ),
//            ListTile(
//             leading: Icon(Icons.person),
//             title: Text('accuit'),
//              onTap: () => null,
//            ),
//             ListTile(
//             leading: Icon(Icons.school),
//             title: Text('les cours'),
//             onTap: () => null,
//            ),
//             ListTile(
//             leading: Icon(Icons.settings),
//             title: Text('parametre'),
//             onTap: () => null,
//            ),
//             ListTile(
//             leading: Icon(Icons.exit_to_app),
//             title: Text('sortir'),
//             onTap: () => null,
//            ),
//            SizedBox(height: 200,),
//            const Divider(
//             height: 20,
//             color: Colors.black,
//            ),
//            SizedBox(height: 10,),
//            Container(
//             padding: EdgeInsets.only(bottom: 50.0),
//             child: Column(
              
//               children: [
                
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: const [
//                   Icon( Icons.facebook, color: Color.fromARGB(255, 7, 62, 107), size: 20.0, ),
//                   SizedBox(width: 15,),
//                   Icon(FontAwesomeIcons.twitter,color: Colors.blue, size: 20.0, ),
//                   SizedBox(width: 15,),
//                   Image(image: AssetImage('assets/image/image3.png'),height: 15,width: 15,),
//                   SizedBox(width: 15,),
//                   Icon( Icons.apple_sharp, color: Colors.black, size: 20.0,),                    
//                   ],
//                 ),
//                 SizedBox(height: 5,),

//               // const Text("app du zer",style: TextStyle(decoration: TextDecoration.underline),),
//               Container(
//                     padding: const EdgeInsets.only(
//                     bottom: 5,
//                   ),
//                   decoration: const BoxDecoration(
//                       border: Border(bottom: BorderSide(
//                       color: Colors.black, 
//                       width: 1.0,
//                       ))
//                     ),
//                   child: const Text(
//                       "app du zer",
//                       style: TextStyle(
//                       color: Colors.black,
//                       ),
//                     ),
//                     )
//               ],
              

//             ),
                
//            )
           

//         ],
//       )

//       ),
//       // appBar: AppBar(
//       //   title: const Align (child:Text("MASTERCLASSE"),alignment: Alignment.center),
//       //   actions: const [
//       //     Image(image: AssetImage('assets/image/testrefait.png'),height: 50,width: 50,)
//       //   ],
          
//       // ),
//       body: 

//       // floatingActionButton: const FloatingActionButton(
//       //       onPressed: null,
//       //       child: Icon(Icons.camera_alt_outlined),
//       //     ),
//       //     bottomNavigationBar: BottomAppBar(
//       //       shape: CircularNotchedRectangle(),
//       //       // color: Colors.red,
//       //       notchMargin: 5,
//       //       clipBehavior: Clip.antiAlias,
//       //       child: BottomNavigationBar(items: const [
//       //         BottomNavigationBarItem(icon:   Padding(
//       //           padding: EdgeInsets.only(right: 130),
//       //           child: Icon(Icons.home),
//       //         ), label: ""),
              
//       //         BottomNavigationBarItem(icon: Padding(
//       //           padding: EdgeInsets.only(left: 130),
//       //           child: Icon(Icons.person),
//       //         ), label: ""),
//       //       ]),
//       //     ),
//       //     floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//     );
//   }
// }