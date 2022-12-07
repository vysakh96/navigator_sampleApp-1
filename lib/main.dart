import 'package:flutter/material.dart';
import 'package:navigator_sample/page2.dart';

void main() =>
runApp(MaterialApp(debugShowCheckedModeBanner: false,
home: const NavSample()),);

class NavSample extends StatefulWidget {
  const NavSample({Key? key}) : super(key: key);

  @override
  State<NavSample> createState() => _NavSampleState();
}

class _NavSampleState extends State<NavSample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('LOG IN PAGE',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black),),
          backgroundColor: Colors.white,
          centerTitle: true,
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(radius: 80,backgroundColor: Colors.blueGrey,
                child: Icon(Icons.person,size: 130,color: Colors.black,),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20,top: 30),
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                      hintText: 'User Id',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20,top: 20,bottom: 30),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(suffixIcon: Icon(Icons.remove_red_eye_rounded),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(30),),
                      hintText: 'Password',
                    ),
                  ),
                ),
                Container(
                  height: 35,
                  width: 100,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.blue,),
                child:TextButton(onPressed: (){
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context)=> const Biography()),
                  );
                },
                child: Text('Log In',style: TextStyle(color: Colors.white),),
                ),
                  ),
                SizedBox(height: 21,),
                Text('Forgot Password'),
              ],
            ),
          ),
        ),
    );
  }
}

