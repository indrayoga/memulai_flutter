import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HttpGetPage extends StatefulWidget {
  const HttpGetPage({super.key});

  @override
  State<HttpGetPage> createState() => _HttpGetPageState();
}

class _HttpGetPageState extends State<HttpGetPage> {
  late String body;

  @override
  void initState() {
    // TODO: implement initState
    body = "belum ada data";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HTTP Get'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              body,
              style: TextStyle(
                fontSize: 11,
              ),
            ),
            ElevatedButton(
              onPressed: () async {
                var response = await http.get(
                  Uri.parse("https://reqres.in/api/users/2"),
                );
                if (response.statusCode == 200) {
                  var data = json.decode(response.body);
                  setState(() {
                    body = data['data'].toString();
                  });
                } else {
                  print("request gagal ${response.statusCode}");
                }
              },
              child: Text("Ambil Data"),
            ),
          ],
        ),
      ),
    );
  }
}
