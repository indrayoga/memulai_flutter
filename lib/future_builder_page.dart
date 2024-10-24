import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class FutureBuilderPage extends StatefulWidget {
  @override
  State<FutureBuilderPage> createState() => _FutureBuilderPageState();
}

class _FutureBuilderPageState extends State<FutureBuilderPage> {
  late String body;
  List allUser = [];
  @override
  void initState() {
    // TODO: implement initState
    body = "belum ada data";
    super.initState();
  }

  Future getAllUser() async {
    var response = await http.get(Uri.parse("https://reqres.in/api/users"));
    if (response.statusCode == 200) {
      allUser = json.decode(response.body)['data'];
      print(allUser);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Future Builder'),
      ),
      body: FutureBuilder(
          future: getAllUser(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: Text("Waiting"),
              );
            }
            return ListView.builder(
              itemCount: allUser.length,
              itemBuilder: (content, index) => ListTile(
                leading: CircleAvatar(),
                title: Text("${allUser[index]['first_name']}"),
                subtitle: Text("${allUser[index]['email']}"),
              ),
            );
          }),
    );
  }
}
