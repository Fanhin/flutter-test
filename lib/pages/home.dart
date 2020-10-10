import 'package:flutter/material.dart';
import 'timeline_page.dart';
import 'todolist_page.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //properties

  int currentTab = 0;
  // final List<Widget> screens = [
  //   TimelinePage(),
  //   TodolistPage(),
  // ];

  //activity page(Tab)

  Widget currentScreen = TimelinePage(); // first create screen

  final PageStorageBucket bucket = PageStorageBucket();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        bucket: bucket,
        child: currentScreen,
      ),

      //fab Btn
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.orangeAccent,
        onPressed: () {},
      ),

      //fab position
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment:MainAxisAlignment.spaceAround ,
            
            children: <Widget>[
              Container(
                child: MaterialButton(
                 
                  onPressed: () {
                    setState(
                      () {
                        currentScreen = TimelinePage();
                        currentTab = 0;
                      },
                    );
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.linear_scale,
                          color:
                              currentTab == 0 ? Colors.blue : Colors.grey),
                      Text(
                        "Timeline",
                        style: TextStyle(
                            color: currentTab == 0
                                ? Colors.blue
                                : Colors.grey),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                child: MaterialButton(
                  
                  onPressed: () {
                    setState(
                      () {
                        currentScreen = TodolistPage();
                        currentTab = 1;
                      },
                    );
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.list,
                          color:
                              currentTab == 1 ? Colors.blue : Colors.grey),
                      Text(
                        "TodoList",
                        style: TextStyle(
                            color: currentTab == 1
                                ? Colors.blue
                                : Colors.grey),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
