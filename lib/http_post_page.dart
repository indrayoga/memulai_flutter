import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HttpPostPage extends StatefulWidget {
  @override
  State<HttpPostPage> createState() => _HttpPostPageState();
}

class _HttpPostPageState extends State<HttpPostPage> {
  TextEditingController nameController = TextEditingController();

  TextEditingController jobController = TextEditingController();

  String message = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form HTTP Post'),
      ),
      body: ListView(
        padding: EdgeInsets.all(8),
        children: [
          TextField(
            controller: nameController,
            autocorrect: true,
            decoration: InputDecoration(
              label: Text("Name"),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            controller: jobController,
            autocorrect: true,
            decoration: InputDecoration(
              label: Text("Job"),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: () async {
              var response = await http.post(
                Uri.parse('https://reqres.in/api/users'),
                body: {"name": nameController.text, "job": jobController.text},
              );
              var data = json.decode(response.body);
              setState(() {
                message = data.toString();
              });
            },
            child: Text("Simpan"),
          ),
          SizedBox(
            height: 10,
          ),
          Text(message)
        ],
      ),
    );
  }
}
