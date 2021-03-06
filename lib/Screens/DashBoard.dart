import 'package:flutter/material.dart';
import 'package:flutter_project/Common/app_bar_home_page.dart';
import 'package:flutter_project/Screens/ReviewScreen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
      appBar: AppBarUserLogin(context: context),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.count(
          primary: false,
          padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
          crossAxisCount: 2,
          children: <Widget>[
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => ReviewPage()));
              }, // Handle your callback
              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
              ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset("icons/review.svg",
                        width: 24.0,
                        height: 24.0),
                      SizedBox(height: 30),
                      Text("???????????????"),
                    ],
                  ),
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
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset("icons/review.svg",
                          width: 24.0,
                          height: 24.0),
                      SizedBox(height: 30),
                      Text("???????????????????????????????????? ???????????????"),
                    ],
                  ),
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
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset("icons/review.svg",
                          width: 24.0,
                          height: 24.0),
                      SizedBox(height: 30),
                      Text("?????????????????? ????????????????????????"),
                    ],
                  ),
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
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset("icons/review.svg",
                          width: 24.0,
                          height: 24.0),
                      SizedBox(height: 30),
                      Text("?????????????????? ????????????????????????"),
                    ],
                  ),
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
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset("icons/review.svg",
                          width: 24.0,
                          height: 24.0),
                      SizedBox(height: 30),
                      Text("?????????????????????"),
                    ],
                  ),
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
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset("icons/review.svg",
                          width: 24.0,
                          height: 24.0),
                      SizedBox(height: 30),
                      Text("??????????????? ???????????????"),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
