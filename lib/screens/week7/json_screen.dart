import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class JsonScreen extends StatefulWidget {
  const JsonScreen({super.key});

  @override
  State<JsonScreen> createState() => _JsonScreenState();
}

class _JsonScreenState extends State<JsonScreen> {
  String severUrl = "https://jsonplaceholder.typicode.com/todos";
  String data = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Image Picker")),
      body: Container(
        child: ListView(
          children: [
            ElevatedButton(
              onPressed: () => getDataFromJson(),
              child: Text("Get Data From Image "),
            ),
            ElevatedButton(
              onPressed: () => getDataFromSever(),
              child: Text("Get Data From Server  "),
            ),
            Text(data,style:TextStyle(fontSize:19),)
          ],
        ),
      ),
    );
  }

  void getDataFromSever() {}

  void getDataFromJson() async {
    Uri url = Uri.parse("https://dummyjson.com/products");
    var response = await  http.get(url);
    print(jsonDecode(response.body));
    //var serverData = jsonEncode(response.body);
    Map<String, dynamic> serverData = jsonDecode(response.body);

    setState(() {
      data = serverData["products"][0].toString();
    });
  }
}
