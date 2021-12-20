import 'package:flutter/material.dart';

class AppBarWithBackButton{

static appBarWithBack(){

  return AppBar(
    title: Text('অবসর', style: TextStyle(shadows: [
      Shadow(
        color: Colors.black,
        blurRadius: 10.0,
        offset: Offset(3.0, 3.0),
      )],
        fontSize: 25.0,
        fontWeight: FontWeight.bold
    )
    ),
    centerTitle: true,
    flexibleSpace: Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.green, Colors.red, Colors.green], stops: [0.1, 0.5, 0.9],
        ),
      ),
    ),
  );
}
}