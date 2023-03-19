import 'package:flutter/material.dart';

import '../flutter_scrollable_session/flutter_scrollable_session.dart';

class FlutterInteractiveWidgets extends StatelessWidget {
  FlutterInteractiveWidgets({Key? key}) : super(key: key);

  TextEditingController controllerVar = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // floatingActionButtonLocation: FloatingActionButtonLocation.startDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.amber,
        child: Icon(
          Icons.add_a_photo_outlined,
          color: Colors.black,
        ),
        tooltip: 'Give An advice',
        onPressed: () {
          print('FloatingActionButton');
        },
      ),
      appBar: AppBar(
        title: const Text('Flutter Interactive Widgets'),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: controllerVar,
                keyboardType:TextInputType.phone,
                onSubmitted: (input) {
                  print(input);
                },
                onChanged: (input) {
                  print(input);
                },
                decoration: InputDecoration(
                  // labelText: 'E-mail',
                  label: Text('E-mail'),
                  hintText: 'Enter your Email',
                  border: OutlineInputBorder(

                      borderRadius: BorderRadius.all(Radius.circular(35))),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.deepOrange)
                  ),
                ),

              ),
              const SizedBox(
                height: 50,
              ),
              //FAB
              FloatingActionButton(
                backgroundColor: Colors.amber,
                child: Icon(
                  Icons.add_a_photo_outlined,
                  color: Colors.black,
                ),
                tooltip: 'Give An advice',
                onPressed: () {
                  print('FloatingActionButton');
                },
              ),
              const SizedBox(
                height: 25,
              ),
              //ElevatedButton
              ElevatedButton(
                onPressed: () {
                  // print('ElevatedButton');
                  print(controllerVar.text);
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.access_alarm_rounded),
                    const Text('ElevatedButton'),
                  ],
                ),
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(35)),
                    backgroundColor: Colors.deepPurple,
                    padding: EdgeInsets.all(25)),
              ),
              ElevatedButton(
                onPressed: () {},
                child: null,
                style:
                // ElevatedButton.styleFrom(
                //     backgroundColor:Colors.orangeAccent,
                // ),
                ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.red),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              TextButton(
                onPressed: () {
                  controllerVar.clear();
                },
                child: const Text('TextButton'),
                onLongPress: () {
                  print('onLongPress');
                },
              ),
              IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
              const SizedBox(
                height: 25,
              ),
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return FlutterScrollableSession();
                  }));
                },
                icon: Icon(Icons.alarm),
                label: const Text('ElevatedButton'),
              ),
              const SizedBox(
                height: 25,
              ),
              OutlinedButton(
                onPressed: () {


                },
                child: const Text('OutlinedButton'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
//1.Buttons >> onPressed
//2.Text Field
//3.Navigation
//Task => TextFormField
