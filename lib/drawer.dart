import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';



class principal extends StatefulWidget {
  const principal({super.key});

  @override
  State<principal> createState() => _principalState();
}

GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

class _principalState extends State<principal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: Drawer(
              width: 230,
      child: ListView(
        children:  [
              DrawerHeader(
              decoration: const BoxDecoration(
               
              ),
              child: Row(
                children:  const [
                  CircleAvatar(
                    radius: 30,

                    backgroundImage: AssetImage("assets/image/lezer.jpeg"),
                  ),
                  // Image(image: AssetImage('assets/image/testrefait.png'),height: 60,width: 60,),
                  SizedBox(width: 10,),
                  Text('MASTERCLASSE'),
                ],
              ),    
           ),
           const Divider(
            height: 20,
            color: Colors.black,
           ),
           ListTile(
            leading: Icon(Icons.person),
            title: Text('accuit'),
             onTap: () => null,
           ),
            ListTile(
            leading: Icon(Icons.school),
            title: Text('les cours'),
            onTap: () => null,
           ),
            ListTile(
            leading: Icon(Icons.settings),
            title: Text('parametre'),
            onTap: () => null,
           ),
            ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('sortir'),
            onTap: () => null,
           ),
           SizedBox(height: 200,),
           const Divider(
            height: 20,
            color: Colors.black,
           ),
           SizedBox(height: 10,),
           Container(
            padding: EdgeInsets.only(bottom: 50.0),
            child: Column(
              
              children: [
                
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                  Icon( Icons.facebook, color: Color.fromARGB(255, 7, 62, 107), size: 20.0, ),
                  SizedBox(width: 15,),
                  Icon(FontAwesomeIcons.twitter,color: Colors.blue, size: 20.0, ),
                  SizedBox(width: 15,),
                  Image(image: AssetImage('assets/image/image3.png'),height: 15,width: 15,),
                  SizedBox(width: 15,),
                  Icon( Icons.apple_sharp, color: Colors.black, size: 20.0,),                    
                  ],
                ),
                SizedBox(height: 5,),

              // const Text("app du zer",style: TextStyle(decoration: TextDecoration.underline),),
              Container(
                    padding: const EdgeInsets.only(
                    bottom: 5,
                  ),
                  decoration: const BoxDecoration(
                      border: Border(bottom: BorderSide(
                      color: Colors.black, 
                      width: 1.0,
                      ))
                    ),
                  child: const Text(
                      "app du zer",
                      style: TextStyle(
                      color: Colors.black,
                      ),
                    ),
                    )
              ],
              

            ),
                
           )
           

        ],
      )

      ),
    );
  }
}