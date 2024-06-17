import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:wabiz_freezed/basic_model.dart';
import 'package:wabiz_freezed/freezed_user_model.dart';

import 'json_serial_basic_model.dart';

String jsonUrl = 'https://jsonplaceholder.typicode.com/users';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Hello World!'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () async {
            final response = await http.get(Uri.parse(jsonUrl));
            if (response.statusCode == 200) {
              // print(response.body);
              List<dynamic> jsonResp = jsonDecode(response.body);
              // print(jsonResp);
              for (var element in jsonResp) {
                final jsonData = element as Map<String, dynamic>;
                // print(jsonData['name']);
                // final user = BasicUser.fromJson(jsonData);
                // final user = AdvanceUser.fromJson(jsonData);
                final user = FreezedUserModel.fromJson(jsonData);
                print(user.toString());
                // user.address!.zipcode;
                // final user = BasicUser(
                //   id: jsonData['id'] as int?,
                //   name: jsonData['name'] as String?,
                //   username: jsonData['username'] as String?,
                // );
              }
            }
          },
        ),
      ),
    );
  }
}
