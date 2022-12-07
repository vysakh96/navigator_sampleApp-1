
import 'package:flutter/material.dart';


class Biography extends StatefulWidget {
  const Biography({Key? key}) : super(key: key);

  @override
  State<Biography> createState() => _BiographyState();
}

class _BiographyState extends State<Biography> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue,
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(radius: 90,backgroundImage:AssetImage('images/leo.jpg'),
                ),
                SizedBox(height: 35,),
                Text('LIONEL MESSI',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                SizedBox(height: 30,),
                Text('Lionel Messi was born in Santa Fe Province \n\non 24 June 1987. At the age of five, he started \n\nplaying football for Grandoli, a club coached by \n\nhis father. In 1995, Messi switched to Newells \n\nOld Boys. At the age of 11, he was diagnosed \n\nwith a growth hormone deficiency.',
                  style: TextStyle(fontSize: 17,color: Colors.white),)
              ],
            ),
          ),
        ),
    );
  }
}