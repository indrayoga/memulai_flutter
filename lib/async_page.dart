import 'package:flutter/material.dart';

class AsyncPage extends StatelessWidget {
  const AsyncPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Penggunaan asynchronous'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Lihat Pada Log",
              style: TextStyle(
                fontSize: 11,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                tampilkanE();
                print('a');

                Future(() {
                  print('b');
                });
                print('c');
              },
              child: Text("Tampilkan async data"),
            ),
          ],
        ),
      ),
    );
  }
}

void tampilkanE() async {
  await Future.delayed(
    Duration(
      seconds: 5,
    ),
    () {
      print('D');
    },
  );

  print('E');
}
