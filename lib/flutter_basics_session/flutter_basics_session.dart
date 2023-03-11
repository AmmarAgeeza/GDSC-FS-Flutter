import 'package:flutter/material.dart';

class FlutterBasicsSession extends StatelessWidget {
  const FlutterBasicsSession({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        // centerTitle: true,
        title: Row(children: [Text('Flutter Basics Session'),Icon(Icons.person)],),
      ),
      backgroundColor:Colors.deepOrange ,
      body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                /*
                  Text('GDSC',style: TextStyle(fontSize: 25),),
                  // SizedBox(width: 25),
                  Text('FS',style: TextStyle(fontSize: 25),),
                  // SizedBox(width: 25),
                  Text('Flutter',style: TextStyle(fontSize: 25),),
                  Icon(Icons.face,size: 35,color: Colors.white,),
*/
                /*
                  Container(
                    width: 300,
                    height: 30,
                    decoration: BoxDecoration(
                        color: Colors.white,
                      borderRadius: BorderRadius.circular(24)
                    ),
                    child: Center(child: Text('GDSC')),
                  ),

                   */
                /*
                  SizedBox(
                      height: 300,
                      width: double.infinity,
                      child: Image.asset('assets/images/google.jpg',)),
                  SizedBox(
                      height: 300,
                      width: double.infinity,
                      child: Image.network('https://images.unsplash.com/photo-1677937684723-fe06ac019f6a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw0fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60')),
                  */
                CircleAvatar(
                  backgroundColor: Colors.black,
                  radius:100,
                  backgroundImage: AssetImage('assets/images/google.jpg'),
                ),
                Text('Mahmoud',style: TextStyle(fontSize: 35,color: Colors.black,fontWeight: FontWeight.bold),)
              ],
            ),
          )),
    );
  }
}

