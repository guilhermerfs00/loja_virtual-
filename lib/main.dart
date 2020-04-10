import 'package:flutter/material.dart';
import 'package:lojavirtual/models/user_model.dart';
import 'package:lojavirtual/screens/HomeScreen.dart';
import 'package:lojavirtual/screens/login_scren.dart';
import 'package:scoped_model/scoped_model.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScopedModel <UserModel>(
      model: UserModel(),
      child: MaterialApp(
        title: 'Flutter Clothings',
        theme: ThemeData(
            primarySwatch: Colors.blue,
            primaryColor: Color.fromARGB(255, 4, 125, 141)),
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
      ),
    );
  }
}