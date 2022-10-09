import 'package:flutter/material.dart';
import 'package:flutter_application_1/article.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

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
       home: Home(),
    );
    
  }
}



class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  void _showDialog(){
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        
        return AlertDialog(
        
          title: const Text('Licence',textAlign: TextAlign.center,), 
          
          content: const Text('accepter la licence de cette application \n de cette pour avoir acese a la platform'),
          actions: [
            MaterialButton(
              color: Colors.blue,
              onPressed: (){
                Navigator.pop(context);
                final snackBar =   SnackBar(
                content: Text("vous n'aves par deoit au a cette platforme"),
          );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
              child: Text('non'),
              ),
            MaterialButton(
              color: Colors.blue,
              onPressed: (){Navigator.push(context,MaterialPageRoute(builder: (context) => const principal()),);},
              child: Text('oui'),
              ),
          ],
        );
      }
      );
  }
  bool check = false;
  @override
  Widget build(BuildContext context) {
    
  
    final ButtonStyle style =  ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)) ,fixedSize: Size(0, 50),textStyle: const TextStyle(fontSize: 20),backgroundColor: Color.fromARGB(255, 5, 53, 92));

    return Scaffold(
        // appBar: AppBar( 
        //   leading: const Icon(Icons.menu),
        //   title: const Align (child:Text("IGS.COM"),alignment: Alignment.center),
        //   actions: const [Icon(Icons.search)], 
        // ),
        
        body: Container(
            decoration: const BoxDecoration(
            image: DecorationImage(
            image: AssetImage("assets/image/Format.png"), 
            fit: BoxFit.cover,
          ),
        ),
          child: ListView(
            
            children:  [
              Container(
                // height: 400,
                // width: 300,
                // child: Row(
                //   children: const [
                //     Text('welcome  Back ',style: TextStyle(fontSize: 20,color: Colors.blue),),
                //     SizedBox(width: 50.0,),
                //     Image(image: AssetImage('assets/image/image2.jpg'),height: 100,width: 75,)
                //   ],
                // ),
                padding: const EdgeInsets.symmetric(vertical: 50.0,horizontal: 30.0),
                child: Form(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                            // ignore: prefer_const_constructors
                            Center(
                              child: Row(
                                
                                  children:  const [
                                    SizedBox(width: 20.0,),
                                    Text('welcome \nBack ',style: TextStyle(fontSize: 30,color: Color.fromARGB(255, 5, 53, 92)),),
                                    SizedBox(width: 10.0,),
                                    Image(image: AssetImage('assets/image/testrefait.png'),height: 150,width: 150,)
                                    ],
                              ),
                            ),
                            // Image.asset('assets/image/image2.jpg',height: 100.0,width: 100.0,),
                            const SizedBox(height: 10.0,),
                            TextFormField(
                              // ignore: prefer_const_constructors
                              decoration: InputDecoration(
                                labelText: 'Email',
                                border: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))),
                              ),
                            ),

                            const SizedBox(height: 30.0,),
                            
                            TextFormField(
                              // ignore: prefer_const_constructors
                              decoration: InputDecoration(
                                labelText: 'password',
                                border: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))),
                                
                              ),
                              obscureText: true,
                            ),   
                            Row(
                              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children:  [
                                        Checkbox(activeColor: Color.fromARGB(255, 5, 53, 92), value: check, onChanged: (bool? value) {
                                          setState(() {
                                            check= value!;
                                          });
                                        },
                                        
                                      ),
                                      const Text('Remember me'),
                                      Container(child: const Text('Forgot password?',style: TextStyle(color: Color.fromARGB(255, 5, 53, 92)),),
                                       margin: const EdgeInsets.fromLTRB(75, 0, 0, 0),
                                       )
                                             ],
                            ),                       
                            const SizedBox(height: 20.0,),
                            Container(
                                  height: 50,
                                  decoration: const ShapeDecoration(
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))),
                                    gradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                      colors: [
                                        Color(0xFF550BFC),
                                        Color(0xFF00FFA7),
                                      ],
                                    ),
                                  ),
                                  child: MaterialButton(
                                    materialTapTargetSize:
                                        MaterialTapTargetSize.shrinkWrap,
                                    shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))),
                                    child: const Text(
                                      'Login',
                                      style: TextStyle(color: Colors.white, fontSize: 20),
                                    ),
                                    onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => principal(),));},
                                  ),
                      ),
                            const SizedBox(height: 20.0,), 
                                 Center(
                                  child: Row(children: const [
                                      Expanded(child: Divider(color: Color.fromARGB(255, 43, 40, 40),)),
                                      Text("Login with"),
                                      Expanded(child: Divider(color: Color.fromARGB(255, 43, 40, 40),)),
                                  ],),
                                  
                                ),
                              const SizedBox(height: 20.0,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                    children: const <Widget>[ 
                                       
                                       Icon( Icons.facebook, color: Color.fromARGB(255, 7, 62, 107), size: 24.0, ),
                                       SizedBox(width: 30.0,),
                                       Icon(FontAwesomeIcons.twitter,color: Colors.blue, size: 24.0, ),
                                       SizedBox(width: 30.0,),
                                       Image(image: AssetImage('assets/image/image3.png'),height: 24,width: 24,),
                                       SizedBox(width: 30.0,),
                                       Icon( Icons.apple_sharp, color: Colors.black, size: 30.0,),
                                       
                                            ],
                              ),
                              const SizedBox(height: 20.0,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("Don't have an account?"),
                                  SizedBox(width: 10.0,),
                                  GestureDetector(
                                    onTap: (){ Navigator.push(context, MaterialPageRoute(builder: (context) => inscription(),)); },
                                    child: Text('Sign up',style: TextStyle(color: Color.fromARGB(255, 5, 53, 92)),),
                                  )
                                ],
                                // mainAxisAlignment: MainAxisAlignment.center,
                                // children: const [
                                //   Text("Don't have an account?"),
                                //   SizedBox(width: 10.0,),
                                  
                                //   Text('Sign up',style: TextStyle(color: Color.fromARGB(255, 5, 53, 92)),)],
                              )
                   ],
                  ),
                   
                ),
                ),
              ]  ),
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