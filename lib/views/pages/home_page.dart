import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(

        backgroundColor: Colors.cyan,
        title: Text(
          "Color Changer",
          style: TextStyle(
              color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          spacing: 50,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ButtonStyle(
                foregroundColor:  WidgetStatePropertyAll(Colors.black),
                backgroundColor: WidgetStatePropertyAll(Colors.cyan)
              ),
                onPressed: () {
                  Navigator.pushNamed(context, 'static_page');
                },
                child: Text(" Static Page ",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)),
            ElevatedButton(
                style: ButtonStyle(
                    foregroundColor:  WidgetStatePropertyAll(Colors.black),
                    backgroundColor: WidgetStatePropertyAll(Colors.cyan)
                ),
                onPressed: () {
                  Navigator.pushNamed(context, 'dynamic_page');
                },
                child: Text(" Dynamic Page ",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)),
          ],
        ),
      ),
    );
  }
}