import 'package:flutter/material.dart';

class StaticPage extends StatefulWidget {
  const StaticPage({super.key});

  @override
  State<StaticPage> createState() => _StaticPageState();
}

class _StaticPageState extends State<StaticPage> {
  Color bgColor = Colors.white;

  bool isCyanBoxSelected = false;
  bool isRedBoxSelected = false;
  bool isYellowBoxSelected = false;
  bool ispurpleBoxSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [IconButton(onPressed: (){
          setState(() {
            bgColor= Colors.white;
          });

        }, icon: Icon(Icons.refresh))],
        title: Text('Static Page',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: bgColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [

            GestureDetector(
              onTap: () {
                setState(() {
                  bgColor =
                  (isCyanBoxSelected == false) ? Colors.cyan : Colors.white;
                  isCyanBoxSelected = !isCyanBoxSelected;
                });
              },
              child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  color: Colors.cyan,
                  border: (bgColor == Colors.cyan) ? Border.all(width: 3) : null,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  bgColor =
                  (isRedBoxSelected == false) ? Colors.red : Colors.white;
                  isRedBoxSelected = !isRedBoxSelected;
                });
              },
              child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  color: Colors.red,
                  border: (bgColor == Colors.red) ? Border.all(width: 3) : null,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  bgColor = (isYellowBoxSelected == false)
                      ? Colors.yellow
                      : Colors.white;
                  isYellowBoxSelected = !isYellowBoxSelected;
                });
              },
              child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  border:
                  (bgColor == Colors.yellow) ? Border.all(width: 3) : null,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  bgColor = (ispurpleBoxSelected == false)
                      ? Colors.purple
                      : Colors.white;
                  ispurpleBoxSelected = !ispurpleBoxSelected;
                });
              },
              child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  color: Colors.purple,
                  border:
                  (bgColor == Colors.purple) ? Border.all(width: 3) : null,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}