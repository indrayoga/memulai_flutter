import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int nilai = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Statefull widget"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "$nilai",
              style: TextStyle(fontSize: 64),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    nilai--;
                    setState(() {});
                  },
                  child: Text("-"),
                ),
                ElevatedButton(
                  onPressed: () {
                    nilai++;
                    setState(() {});
                  },
                  child: Text("+"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
