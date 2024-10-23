import 'package:flutter/material.dart';
import 'package:memulai_flutter/async_page.dart';
import 'package:memulai_flutter/counter_page.dart';
import 'package:memulai_flutter/form_page.dart';
import 'package:memulai_flutter/http_get_page.dart';
import 'package:memulai_flutter/http_post_page.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Memulai Flutter'),
      ),
      body: ListView(
        padding: EdgeInsets.all(8),
        children: [
          ElevatedButton(
            onPressed: () {
              //cara penggunaan navigation
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => CounterPage(),
                ),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
            ),
            child: Text(
              "Statefull Widget",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              //cara penggunaan navigation
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => FormPage(),
                ),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
            ),
            child: Text(
              "Form",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              //cara penggunaan navigation
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => AsyncPage(),
                ),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
            ),
            child: Text(
              "asynchronous",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              //cara penggunaan navigation
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => HttpGetPage(),
                ),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
            ),
            child: Text(
              "HTTP Get",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              //cara penggunaan navigation
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => HttpPostPage(),
                ),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
            ),
            child: Text(
              "HTTP Post",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
