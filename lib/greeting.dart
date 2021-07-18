import 'package:flutter/material.dart';
 


  class GreetingScreen extends StatefulWidget {
 late String value;
  GreetingScreen({required this.value});
  @override
  _State createState() => _State(value);
}
 
class _State extends State<GreetingScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
    String value;
  _State(this.value);
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       
        body: Padding(
            padding: EdgeInsets.all(10),
            child: ListView(
              
              children: <Widget>[

                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.fromLTRB(20, 100, 20, 20),
                    child: Text(
                      'CRUX FLUTTER SUMMER GROUP',
                      style: TextStyle(
                          color: Color(0xff2FC4B2),
                          fontWeight: FontWeight.w700,
                          fontSize: 40),
                    )),
                
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.fromLTRB(20, 50, 20, 80),
                    child: Text(
                      'welcomes you',
                      style: TextStyle(fontSize: 17),
                    )),
                
                Container(
                  alignment: Alignment.center,
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      value,
                      style: TextStyle(fontWeight: FontWeight.w700 ,fontSize: 40),
                    )),
                SizedBox(height: 30,),
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      'Have a great journey ahead !!',
                      style: TextStyle(fontSize: 20),
                    )),
                SizedBox(height: 30,),
              ],
            )));
  }
}
