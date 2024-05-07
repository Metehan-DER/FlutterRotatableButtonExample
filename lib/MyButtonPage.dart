/// Written by Metehan DER

import 'package:flutter/material.dart';

class MyButtonPage extends StatefulWidget {
  const MyButtonPage({super.key});

  @override
  State<MyButtonPage> createState() => _MyButtonPageState();
}

class _MyButtonPageState extends State<MyButtonPage> {
  double _rotation = 0.0;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.black26,
        appBar: AppBar(
          title: Text(
            'Rotatable Button Example',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.black12,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {
                setState(() {
                  _rotation = 0.0;
                });
              },
              icon: Icon(Icons.keyboard_arrow_up),
              color: Colors.blue,
              iconSize: size.width * 0.12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      _rotation = 0.75;
                    });
                  },
                  icon: Icon(Icons.keyboard_arrow_left),
                  color: Colors.blue,
                  iconSize: size.width * 0.12,
                ),
                Container(
                  height: size.width * 0.4,
                  width: size.width * 0.4,
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                      color: Colors.white.withOpacity(0.4),
                      spreadRadius: 3,
                      blurRadius: 5,
                      offset: Offset(0, 5), // sol üst köşe
                    ),
                  ], color: Colors.white, shape: BoxShape.circle),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          _rotation = 0.0;
                        });
                      },
                      child: AnimatedRotation(
                        duration: Duration(milliseconds: 350),
                        turns: _rotation,
                        child: Container(
                          alignment: Alignment.topCenter,
                          decoration: BoxDecoration(boxShadow: [
                            BoxShadow(
                              color: Colors.blue.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 5,
                              offset: Offset(-0, -5), // sol üst köşe
                            ),
                            BoxShadow(
                              color: Colors.blue.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 5,
                              offset: Offset(0, 5), // sağ alt köşe
                            ),
                          ], color: Colors.white, shape: BoxShape.circle),
                          child: Padding(
                            padding: EdgeInsets.only(
                                bottom: size.width * 0.25,
                                left: size.width * 0.05,
                                right: size.width * 0.05,
                                top: size.width * 0.02),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.lightBlue.shade500,
                                  shape: BoxShape.circle),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      _rotation = 0.25;
                    });
                  },
                  icon: Icon(Icons.keyboard_arrow_right),
                  color: Colors.blue,
                  iconSize: size.width * 0.12,
                ),
              ],
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  _rotation = 0.5;
                });
              },
              icon: Icon(Icons.keyboard_arrow_down),
              color: Colors.blue,
              iconSize: size.width * 0.12,
            ),
          ],
        ));
  }
}
