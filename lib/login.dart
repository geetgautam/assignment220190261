import 'package:flutter/material.dart';
import 'package:layout/greeting.dart';
import 'package:layout/register.dart';
 

class LoginScreen extends StatefulWidget {
  @override
  _State createState() => _State();
}
 
class _State extends State<LoginScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  late String value;
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       
        body: Padding(
            padding: EdgeInsets.all(10),
            child: ListView(
              
              children: <Widget>[

                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.fromLTRB(20, 100, 20, 80),
                    child: Text(
                      'CRUX FLUTTER SUMMER GROUP',
                      style: TextStyle(
                          color: Color(0xff2FC4B2),
                          fontWeight: FontWeight.w700,
                          fontSize: 40),
                    )),
                
                Container(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      'ID Number',
                      style: TextStyle(fontSize: 17),
                    ), 
                    ),
                Container(
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(color: Colors.grey[300]),
                  child: TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                     
                    border: InputBorder.none,
                    labelText: 'Please enter your ID Number',
                    ),
                    onChanged: (text){
                       value = text;
                    },
                  ),
                ),
                Container(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      'Password',
                      style: TextStyle(fontSize: 17),
                    )),
                Container(
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(color: Colors.grey[300]),
                  child: TextField(
                    obscureText: true,
                    controller: passwordController,
                    decoration: InputDecoration(
                    border: InputBorder.none,
                    labelText: 'Please enter your password',
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  height: 50,
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: ElevatedButton(
                      child: Text('LOG IN', style: TextStyle(fontSize: 20),),
                      style: ElevatedButton.styleFrom(onPrimary: Colors.white,primary: Color(0xff2FC4B2)),
                      onPressed: () {
                        print(nameController.text);
                        print(passwordController.text);
                        Navigator.push(context, new MaterialPageRoute(
                              builder: (context) => GreetingScreen(value : value),
                              ));
                      },
                    )),

                TextButton(
                  onPressed: (){
                  },
                  child: Text('Forgot Password ?',), 
                  style: ElevatedButton.styleFrom(primary: Colors.white,onPrimary: Color(0xff2FC4B2)),
                  
                ),
                SizedBox(height: 20,),
                Container(
                  child: Row(
                    children: <Widget>[
                      Text('Do not have account?', style: TextStyle(fontSize: 15),),
                      TextButton(
                         onPressed: () {
                          //signup screen
                          Navigator.push(context, new MaterialPageRoute(
                              builder: (context) => RegisterScreen()
                              ));
                        },
                        child: Text('Register',),
                        style: ElevatedButton.styleFrom(primary: Colors.white,onPrimary: Color(0xff2FC4B2)),                        
                       
                      )
                    ],
                    mainAxisAlignment: MainAxisAlignment.center,
                ))
              ],
            )));
  }
}
