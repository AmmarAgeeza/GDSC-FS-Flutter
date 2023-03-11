import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FlutterScrollableSession extends StatelessWidget {
  const FlutterScrollableSession({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.center_focus_weak_outlined),
        title: Text(
          'FlutterScrollableSession',
          style: GoogleFonts.lato(fontSize: 25),
        ),
        actions: [
          Icon(Icons.alarm),
          Icon(Icons.add),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.deepPurple,
                ),
                Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('men3m'),
                    SizedBox(height: 15,),
                    Text('How are you?'),
                    SizedBox(height: 15,),
                  ],
                ),
                Spacer(),
                Text('3:05 PM'),





              ],
            ),
            SizedBox(height: 35,),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.deepPurple,
              ),
              title: Text('data'),
              subtitle: Text('How are you!?'),
              trailing: Text('3:05 PM'),
            ),
          ],
        ),
      ),
    );
  }

  Column buildColumn() {
    return Column(
      children: [
        Text('Containers'),
        Expanded(
          child: ListView(
            // scrollDirection: Axis.horizontal,
            padding: EdgeInsets.all(16),
            children: [
              Container(
                // margin:EdgeInsets.only(right: 25,left: 22) ,
                padding: EdgeInsets.symmetric(vertical: 35, horizontal: 50),
                height: 300,
                width: double.infinity,
                color: Colors.deepOrange,
                child: Center(child: Text('Container 1')),
              ),
              Container(
                // margin:EdgeInsets.only(right: 25,left: 22,bottom: 10,top: 10) ,
                padding: EdgeInsets.symmetric(vertical: 35, horizontal: 50),
                height: 300,
                width: double.infinity,
                color: Colors.deepOrange,
                child: Center(child: Text('Container 2')),
              ),
              Container(
                // margin:EdgeInsets.only(right: 25,left: 22) ,
                padding: EdgeInsets.symmetric(vertical: 35, horizontal: 50),
                height: 300,
                width: double.infinity,
                color: Colors.deepOrange,
                child: Center(child: Text('Container 3')),
              ),
            ],
          ),
        ),
        Text('Containers'),
        Text('Containers'),
        Text('Containers'),
        Text('Containers'),
      ],
    );
  }
}
//listview = Column + SingleChildScrollView
