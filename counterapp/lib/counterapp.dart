import 'package:flutter/material.dart';

class Counterappp extends StatefulWidget {
  const Counterappp({super.key});

  @override
  State<Counterappp> createState() => _CounterapppState();
}

class _CounterapppState extends State<Counterappp> {
  @override
  int _counter = 0;
  void increment() {
    setState(() {
      _counter++;
    });
  }

  void decrement() {
    setState(() {
      _counter--;
    });
  }

  void restart() {
    setState(() {
      _counter = 0;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text(
          "CounterApp",
          style: TextStyle(fontWeight: FontWeight.w800),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "the number is $_counter",
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
              ),
              Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: 300,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          increment();
                        },
                        child: Icon(Icons.add)),
                    ElevatedButton(
                        onPressed: () {
                          decrement();
                        },
                        child: Icon(Icons.minimize)),
                    ElevatedButton(
                        onPressed: () {
                          restart();
                        },
                        child: Icon(Icons.restart_alt))
                  ],
                ),
              ),
            ]),
      ),
    );
  }
}
