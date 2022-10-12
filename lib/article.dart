import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'accuit.dart';

class article extends StatefulWidget {

  final String txt;
  final String image;
  final String txt2;
  const article({super.key,
              required  this.txt,
              required  this.image,
              required  this.txt2,
                    });

  @override
  State<article> createState() => _articleState();
}

class _articleState extends State<article> {
bool zer  = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 4,
        // padding: EdgeInsets.all(10),
        child: Column(  
          children: [
            Stack(
                  children:  [     
                    Center(child: Image(image: AssetImage(widget.image),height: 300.0,width: 300.0,),), 
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:  [
                      IconButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => principal(),));
                        },
                        icon: Icon(Icons.arrow_back)),
                      
                      SizedBox(width: 280,),
                      IconButton(
                    onPressed: () {
                      setState(() {
                        zer = !zer;
                      });
                    },
                    icon: zer
                        ? Icon(
                            Icons.favorite_border,
                            size: 30,
                            
                          )
                        : Icon(Icons.favorite, size: 30,color: Colors.red,)),
                    ],),
                    ]
            ),
            Row(
              
              children:  [
                SizedBox(width: 10,),
                Text(widget.txt,style: TextStyle(fontSize: 30,color: Colors.black),),
                SizedBox(width: 20,),
                Icon(Icons.star_border,color: Colors.blue,),
               
                SizedBox(width: 2,),
                Text('4.5'),
                SizedBox(width: 100,),
                Text(widget.txt2,style: TextStyle(color: Colors.blue),),
                
              ],
            ),
            SizedBox(height: 10,),
            Container(
              constraints: BoxConstraints.expand(height: 50),
              child: const TabBar(
                tabs: [
                Tab(child: Text('Description',style: TextStyle(color: Colors.black,fontSize: 12,fontWeight: FontWeight.bold),),),
                Tab(child: Text('Review',style: TextStyle(color: Colors.black,fontSize: 12,fontWeight: FontWeight.bold),),),
                Tab(child: Text('offert',style: TextStyle(color: Colors.black,fontSize: 12,fontWeight: FontWeight.bold),),),
                Tab(child: Text('policy',style: TextStyle(color: Colors.black,fontSize: 12,fontWeight: FontWeight.bold),),),
                // Colors.black,
              ]),
              
              // color: Colors.black,
            ),
            Expanded(
              child: Container(
                child: TabBarView(
                  children: [
                    Container(
                    padding: EdgeInsets.all(10),
                    child: Text("Lorem Ipsum est simplement un faux texte de l'industrie de l'impression et de la composition. Le Lorem Ipsum est le texte factice standard de l'industrie depuis les années 1500, lorsqu'un imprimeur inconnu a pris une galère de caractères et l'a brouillé pour en faire un livre de spécimens de caractères. Il a survécu non",style: TextStyle(fontSize: 15),)
                    ,),
                  Container(child: Text('ggggggg'),),
                  Container(child: Text('ggggggg'),),
                  Container(child: Text('ggggggg'),),

                ]),
            )),
            
            // SizedBox(
            //     height: 250,
            //     child: ListView(
            //       children:  [
            //         AppBar(
            //           buttom: TabBar
            //         )
            //       ],
            //     ),
            //     ),
            Row(
  
              children: [
                       const SizedBox(width: 20,),
                       Container(
                        height: 40,
                        width: 100,

                          padding: EdgeInsets.all(8),
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            color: Colors.blue,
                            ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                               Icon(FontAwesomeIcons.circleMinus,color: Colors.white,),
                               Text('1',style: TextStyle(color: Colors.white),),
                               Icon(Icons.add_circle_outline,color: Colors.white,),
                            ],
                          ),
                        ),
                        const SizedBox(width: 30,),
                       Container(
                        height: 40,
                        width: 200,
                          padding: EdgeInsets.all(8),
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            color: Colors.blue,
                            ),
                            child: Center(child: Text("ajouter l'objet dans le sac",style: TextStyle(color: Colors.white),)),   
                        ),
                      
              ],
            ),
            SizedBox(height: 50),
          ],
        ),

      ),
    );
    
  }
}

// class article extends StatelessWidget {
//   final String txt;
//   final String image;
//   final String txt2;
//   const article({super.key,
//               required  this.txt,
//               required  this.image,
//               required  this.txt2,
//                     });

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: DefaultTabController(
//         length: 4,
//         // padding: EdgeInsets.all(10),
//         child: Column(  
//           children: [
//             Stack(
//                   children:  [     
//                     Center(child: Image(image: AssetImage(image),height: 300.0,width: 300.0,),), 
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: const [
//                        Icon(Icons.arrow_back),
//                       SizedBox(width: 300,),
//                       Icon(FontAwesomeIcons.heart),
//                     ],),
//                     ]
//             ),
//             Row(
              
//               children:  [
//                 SizedBox(width: 10,),
//                 Text(txt,style: TextStyle(fontSize: 30,color: Colors.black),),
//                 SizedBox(width: 20,),
//                 Icon(Icons.star_border,color: Colors.blue,),
               
//                 SizedBox(width: 2,),
//                 Text('4.5'),
//                 SizedBox(width: 100,),
//                 Text(txt2,style: TextStyle(color: Colors.blue),),
                
//               ],
//             ),
//             SizedBox(height: 10,),
//             Container(
//               constraints: BoxConstraints.expand(height: 50),
//               child: const TabBar(
//                 tabs: [
//                 Tab(child: Text('Description',style: TextStyle(color: Colors.black,fontSize: 12,fontWeight: FontWeight.bold),),),
//                 Tab(child: Text('Review',style: TextStyle(color: Colors.black,fontSize: 12,fontWeight: FontWeight.bold),),),
//                 Tab(child: Text('offert',style: TextStyle(color: Colors.black,fontSize: 12,fontWeight: FontWeight.bold),),),
//                 Tab(child: Text('policy',style: TextStyle(color: Colors.black,fontSize: 12,fontWeight: FontWeight.bold),),),
//                 // Colors.black,
//               ]),
              
//               // color: Colors.black,
//             ),
//             Expanded(
//               child: Container(
//                 child: TabBarView(
//                   children: [
//                     Container(
//                     padding: EdgeInsets.all(10),
//                     child: Text("Lorem Ipsum est simplement un faux texte de l'industrie de l'impression et de la composition. Le Lorem Ipsum est le texte factice standard de l'industrie depuis les années 1500, lorsqu'un imprimeur inconnu a pris une galère de caractères et l'a brouillé pour en faire un livre de spécimens de caractères. Il a survécu non",style: TextStyle(fontSize: 15),)
//                     ,),
//                   Container(child: Text('ggggggg'),),
//                   Container(child: Text('ggggggg'),),
//                   Container(child: Text('ggggggg'),),

//                 ]),
//             )),
            
//             // SizedBox(
//             //     height: 250,
//             //     child: ListView(
//             //       children:  [
//             //         AppBar(
//             //           buttom: TabBar
//             //         )
//             //       ],
//             //     ),
//             //     ),
//             Row(
  
//               children: [
//                        const SizedBox(width: 20,),
//                        Container(
//                         height: 40,
//                         width: 100,

//                           padding: EdgeInsets.all(8),
//                           decoration: const BoxDecoration(
//                             borderRadius: BorderRadius.all(Radius.circular(30)),
//                             color: Colors.blue,
//                             ),
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: const [
//                                Icon(FontAwesomeIcons.calendarMinus,color: Colors.white,),
//                                Text('1',style: TextStyle(color: Colors.white),),
//                                Icon(Icons.add_circle_outline,color: Colors.white,),
//                             ],
//                           ),
//                         ),
//                         const SizedBox(width: 30,),
//                        Container(
//                         height: 40,
//                         width: 200,
//                           padding: EdgeInsets.all(8),
//                           decoration: const BoxDecoration(
//                             borderRadius: BorderRadius.all(Radius.circular(30)),
//                             color: Colors.blue,
//                             ),
//                             child: Center(child: Text("ajouter l'objet dans le sad",style: TextStyle(color: Colors.white),)),   
//                         ),
                      
//               ],
//             ),
//             SizedBox(height: 50),
//           ],
//         ),

//       ),
//     );
//   }
// }