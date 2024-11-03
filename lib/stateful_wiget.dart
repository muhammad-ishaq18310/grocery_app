import 'package:flutter/material.dart';

class StatefulWiget extends StatefulWidget {
  const StatefulWiget({super.key});

  @override
  State<StatefulWiget> createState() => _StatefulWigetState();
}

int counter = 0;

class _StatefulWigetState extends State<StatefulWiget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("counter app "),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Center(
              child: Text(
                "on taping the button the number will change $counter",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 20,
                width: 20,
                decoration:
                    BoxDecoration(color: Colors.blue, shape: BoxShape.circle),
              ),
              Container(
                height: 20,
                width: 20,
                decoration:
                    BoxDecoration(color: Colors.green, shape: BoxShape.circle),
              ),
              Container(
                height: 20,
                width: 20,
                decoration:
                    BoxDecoration(color: Colors.red, shape: BoxShape.circle),
              )
            ],
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        shape: CircleBorder(),
        onPressed: () {
          setState(() {
            counter++;
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}