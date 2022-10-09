import 'package:flutter/material.dart';

import 'main.dart';


class scrolle extends StatelessWidget {

  final String txt;
  final String image;
  final String txt2;


  scrolle(
    {
              super.key,
              required  this.txt,
              required  this.image,
              required  this.txt2, });
   @override
   Widget build(BuildContext context) {
     return Padding(
                      padding: EdgeInsets.all(10),
                      child: InkWell(
                        onTap: () {
                          
                        },
                        child: Container(
                          width: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Colors.white,
                            boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 3,
                                        blurRadius: 5,
                                        offset: Offset(0.0,2.0),
                                      ),
                                    ]
                            ),
                          child: Column(
                            children: [
                              Padding(
                                padding:  EdgeInsets.all(5.0),
                                child: Container(
                                  padding: EdgeInsets.all(10),
                                  height: 110,
                                  width: 145,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(10)),
                                    image: DecorationImage(image: AssetImage(image)),
                                    color: Color(0xFFF6F6F6),),
                                ),
                              ),
                            Center(child: Text(txt)),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children:  [
                                SizedBox(width: 10,),
                                Text(txt2),
                                SizedBox(width: 45,),
                                Container(
                                  height: 30,width: 30,
                                  decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(30)),
                                    color: Color(0xFFF6F6F6),
                                    
                                    ),
                                  child: const Icon( Icons.shopping_cart_outlined, color: Colors.black, size: 20.0,),
                                ),
                              ],
                            )

                            ],
                          )
                        ), 
                      ),
                    );
   }
 }

 class buttom extends StatelessWidget {

  final String txt;
  final Color color;
  final Color bgcolor;
     buttom(
    {
              super.key,
              required  this.txt,
              required  this.color,
              required  this.bgcolor });
 
   @override
   Widget build(BuildContext context) {
     return Padding(
                      padding: EdgeInsets.all(10),
                      child: InkWell(
                        child: Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            color: bgcolor,
                            ),
                          child: Center(child: Text(txt,style: TextStyle(color: color),)),
                        ), 
                      ),
                    );
   }
 }