import 'package:flutter/material.dart';

class Homepage extends StatelessWidget{
const Homepage({Key? key}) : super(key: key);
@override
  Widget build(BuildContext context) {
 return Scaffold(body: Container(
  decoration:const BoxDecoration(
    color: Colors.black,
    image:DecorationImage(
      fit:BoxFit.fill ,
      image: AssetImage("assets/images/astro_moon.png"))
  ),));
 
    
  }
}