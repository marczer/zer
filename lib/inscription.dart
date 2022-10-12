import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'accuit.dart';
import 'main.dart';
import 'connexion.dart';


class inscription extends StatelessWidget {
  const inscription({super.key});

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =  ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),fixedSize: Size(200.0, 50),textStyle: const TextStyle(fontSize: 20),backgroundColor: Color.fromARGB(255, 5, 53, 92));
    return Scaffold(
      // appBar: AppBar( 
      //      leading: const Icon(Icons.arrow_back),
      //      backgroundColor: Color.fromARGB(255, 7, 62, 107),
      //    ),
      body: SingleChildScrollView(
        child: Container(
            decoration: const BoxDecoration(
            image: DecorationImage(
            image: AssetImage("assets/image/Format.png"), 
            fit: BoxFit.cover,
          ),
        ),
          padding: EdgeInsets.symmetric(vertical: 20.0,horizontal: 30.0),
          child: Form(
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.stretch,
              children:  [
                     Image.asset('assets/image/testrefait.png',height: 100.0,width: 100.0,),
                     SizedBox(height: 10.0,),
                     Center( child: Text('Inscrit et obtiens ton compte',style: TextStyle(fontWeight: FontWeight.w700, ),),), 
                     SizedBox(height: 10.0,),
                     TextFormField(
                              // ignore: prefer_const_constructors
                              decoration: InputDecoration(
                                labelText: 'Nom',
                                border: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))),
                              ),
                            ),
                    SizedBox(height: 10.0,),
                    TextFormField(
                              // ignore: prefer_const_constructors
                              decoration: InputDecoration(
                                labelText: 'Prenom',
                                border: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))),
                              ),
                            ),
                    SizedBox(height: 10.0,),
                    TextFormField(
                              // ignore: prefer_const_constructors
                              decoration: InputDecoration(
                                labelText: 'Numero de telephone',
                                border: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))),
                              ),
                            ),
                    SizedBox(height: 10.0,),
                    TextFormField(
                              // ignore: prefer_const_constructors
                              decoration: InputDecoration(
                                labelText: 'Mote de passe',
                                border: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))),
                              ),
                            obscureText: true,
                            ),
                    SizedBox(height: 10.0,),
                    
                    // formulair(),
                    TextFormField(
                              // ignore: prefer_const_constructors
                              decoration: InputDecoration(
                                labelText: 'Confirme mote de passe',
                                border: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))),
                              ),
                            obscureText: true,
                            ),
                    SizedBox(height: 10.0,),
                    ElevatedButton(
                               style: style,
                              onPressed: () {},
                               child: const Text('Valide'),
                              //  Navigator.push(context, MaterialPageRoute(builder: (context) => SnackBarDemo(),));
                                ),
                    SizedBox(height: 10.0,),
                      ElevatedButton(
                               style: style,
                               onPressed: () {
                                       Navigator.push(
                                              context,
                                    MaterialPageRoute(builder: (context) => const Home()),
                                             );
                                           },
                               child: const Text('Se connecter'),

                               
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
                    const SizedBox(height: 30.0,),
                    
                    
              ],)),
            
        ),
        
      ),
    );
  }
}

class formulair extends StatelessWidget {
  const formulair({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
              // ignore: prefer_const_constructors
              decoration: InputDecoration(
                labelText: 'Confirme mote de passe',
                border: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))),
              ),
            obscureText: true,
            );
  }
}