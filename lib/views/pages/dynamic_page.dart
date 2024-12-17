import 'package:flutter/material.dart';

class DynamicPage extends StatefulWidget {
  const DynamicPage({super.key});

  @override
  State<DynamicPage> createState() => _DynamicPageState();
}

class _DynamicPageState extends State<DynamicPage> {
  Color bgColor = Colors.white;
  List<Map<String, dynamic>> boxes = [
    {
      'color': Colors.cyan,
      'isSelected': false,
    },
    {
      'color': Colors.red,
      'isSelected': false,
    },
    {
      'color': Colors.yellow,
      'isSelected': false,
    },
    {
      'color': Colors.purple,
      'isSelected': false,
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [IconButton(onPressed: (){
          setState(() {
            bgColor= Colors.white;
          });

        }, icon: Icon(Icons.refresh))],
        title: Text('Dynamic Page',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
      ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          color: bgColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List.generate(boxes.length, (i) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    bgColor = (boxes[i]['isSelected'] == false)
                        ? boxes[i]['color']
                        : Colors.white;
                    boxes[i]['isSelected'] = !boxes[i]['isSelected'];
                  });
                },
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      color: boxes[i]['color'],
                      border: (boxes[i]['isSelected']) ? Border.all(width: 3) : null),
                ),
              );
            }),
          ),
        ));
  }
}