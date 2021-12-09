import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
class DashBoard extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => InitState();
}

class InitState extends State<DashBoard>{
  String name="", token="", mobile="";
  getSharedValue() async{
    SharedPreferences preferences = await SharedPreferences.getInstance();
    name = preferences.getString("name")!;
    setState(() {
      this.name = name;
    });
  }

  @override
  void initState(){
    getSharedValue();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('অবসর'),
        backgroundColor: new Color(0xFF29A74A),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          children: <Widget>[
            InkWell(
              onTap: () {
                print("container 1 clicked!");
              }, // Handle your callback
              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
              ),
                child: Container(
                  padding: const EdgeInsets.all(8),
                  child: const Text("He'd have you all unravel at the"),
                  color: Colors.teal[100],
                ),
            ),
            ),

            InkWell(
              onTap: () {
                print("container 1 clicked!");
              }, // Handle your callback
              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Container(
                  padding: const EdgeInsets.all(8),
                  child: const Text("He'd have you all unravel at the"),
                  color: Colors.teal[100],
                ),
              ),
            ),

            InkWell(
              onTap: () {
                print("container 1 clicked!");
              }, // Handle your callback
              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Container(
                  padding: const EdgeInsets.all(8),
                  child: const Text("He'd have you all unravel at the"),
                  color: Colors.teal[100],
                ),
              ),
            ),

            InkWell(
              onTap: () {
                print("container 1 clicked!");
              }, // Handle your callback
              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Container(
                  padding: const EdgeInsets.all(8),
                  child: const Text("He'd have you all unravel at the"),
                  color: Colors.teal[100],
                ),
              ),
            ),

            InkWell(
              onTap: () {
                print("container 1 clicked!");
              }, // Handle your callback
              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Container(
                  padding: const EdgeInsets.all(8),
                  child: const Text("He'd have you all unravel at the"),
                  color: Colors.teal[100],
                ),
              ),
            ),

            InkWell(
              onTap: () {
                print("container 1 clicked!");
              }, // Handle your callback
              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Container(
                  padding: const EdgeInsets.all(8),
                  child: const Text("He'd have you all unravel at the"),
                  color: Colors.teal[100],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
