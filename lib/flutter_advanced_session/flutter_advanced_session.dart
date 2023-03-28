
import 'package:flutter/material.dart';

class FlutterAdvancedWidgets extends StatefulWidget {
  const FlutterAdvancedWidgets({super.key});

  @override
  State<FlutterAdvancedWidgets> createState() => _FlutterAdvancedWidgetsState();
}

class _FlutterAdvancedWidgetsState extends State<FlutterAdvancedWidgets> {
  int counterValue = 0;
  int counterOfBuild = 0;
  int index = 0;
  List<Widget> screens = [
    const Center(
      child: Text(
        'Add',
        style: TextStyle(fontSize: 35),
      ),
    ),
    const Center(
      child: Text(
        'minus',
        style: TextStyle(fontSize: 35),
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    print(counterOfBuild++);
    //step 1 => add DefaultTabController.
    //setp 2 => add TabBar to bottom in appBar.
    //step 3 => add TabBarView to body in Scaffold.
    return Scaffold(
      appBar: AppBar(
          title: const Text(
        'Flutter Advanced Widgets',
      )),
      body: screens[index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (indexValue) {
          setState(() {
            index = indexValue;
          });
        },
        unselectedItemColor: Colors.red,
        backgroundColor: Colors.black,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Add'),
          BottomNavigationBarItem(
              icon: Icon(Icons.minimize), label: 'Minimize'),
        ],
      ),
    );
  }

  DefaultTabController tabBarWidget() {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Flutter Advanced Widgets',
          ),
          bottom: const TabBar(
            indicatorSize: TabBarIndicatorSize.label,
            indicatorColor: Colors.amber,
            tabs: [
              Tab(
                text: 'Screen 1',
              ),
              Tab(
                text: 'Screen 2',
              ),
              Tab(
                text: 'Screen 3',
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            //screen 1
            Center(
              child: Text(
                'Screen1',
                style: TextStyle(fontSize: 35),
              ),
            ),
            //screen 2
            Center(
              child: Text(
                'Screen2',
                style: TextStyle(fontSize: 35),
              ),
            ),
            //screen 3
            Center(
              child: Text(
                'Screen3',
                style: TextStyle(fontSize: 35),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Center inkWellAndGesture() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Counter = $counterValue',
            style: const TextStyle(fontSize: 35),
          ),
          ElevatedButton(
            onPressed: () {
              print('counterValueBefore =$counterValue ');
              setState(() {
                counterValue = counterValue + 2;
              });

              print('counterValueAfter =$counterValue ');
            },
            child: const Text('Add by 2'),
          ),
          InkWell(
            onTap: () {
              setState(() {
                counterValue = counterValue + 4;
              });
            },
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Icon(Icons.add),
                Text(
                  'Add by 4',
                  style: TextStyle(fontSize: 55),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                counterValue = counterValue + 6;
              });
            },
            child: Row(
              children: const [
                Icon(Icons.add),
                Text(
                  'Add by 6',
                  style: TextStyle(fontSize: 55),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Center stackWidget() {
    return Center(
      child: Container(
        color: Colors.black26,
        height: 400,
        width: double.infinity,
        child: Stack(
          children: const [
            //image
            Align(
                alignment: Alignment.center,
                child: Text('Image', style: TextStyle(fontSize: 35))),
            //cart
            Align(
                alignment: Alignment.topRight,
                child: Text('Cart', style: TextStyle(fontSize: 35))),
            //indicator
            Align(
                alignment: Alignment.bottomCenter,
                child: Text('Indicator', style: TextStyle(fontSize: 35))),
            //zoomButton
            Align(
                alignment: Alignment.bottomRight,
                child: Text('zoomButton', style: TextStyle(fontSize: 15))),
            Positioned(
                bottom: 35,
                left: 40,
                child: Text('Icon', style: TextStyle(fontSize: 35))),
          ],
        ),
      ),
    );
  }
}
