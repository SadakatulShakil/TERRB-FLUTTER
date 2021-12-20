import 'package:flutter/material.dart';
import 'package:flutter_project/Common/app_bar_home_page.dart';
import 'package:flutter_project/Model/member.dart';
import 'package:flutter_project/Screens/DashBoard.dart';
import 'package:flutter_project/Screens/MemberDetails.dart';
import 'package:flutter_project/Screens/TeacherForm.dart';
import 'package:flutter_project/helpers/utils.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => InitState();
}

class InitState extends State<HomeScreen> {

  List<Member> memberList = Utils.getDataCollection();

  @override
  Widget build(BuildContext context) {
    return initWidget(context);
  }

  Widget initWidget(BuildContext context) {
    return Scaffold(
      appBar: AppBarUserLogin(context: context),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: (){
          Text('Floting icon click');

          Navigator.push(context, MaterialPageRoute(builder: (context) => TeacherForm()));
        },
        icon: FaIcon(FontAwesomeIcons.arrowAltCircleRight),
        backgroundColor: new Color(0xFF29A74A),
        label: Text('পরবর্তী'),
      ),
      body: Container(
          child: Padding(
            padding: const EdgeInsets.only(left: 10.0, top: 2.0, right: 10.0, bottom: 2.0),
            child: GridView.builder(
              shrinkWrap: true,
              itemCount: memberList.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: MediaQuery.of(context).size.width /
                      (MediaQuery.of(context).size.height/1.8),
                  mainAxisSpacing: 10, crossAxisSpacing: 5),
              itemBuilder: (context, index) {
                return gridWidget(index);
              },
            ),
          )
      ),
    );
  }

  Widget gridWidget(int index) {
    return Scaffold(
      body: Container(
        child: GestureDetector(
          onTap: (){
           Navigator.push(context, MaterialPageRoute(builder: (context) => MemberDetails(memberList[index])));
          },
          child: Card(
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                Padding(
                  padding: new EdgeInsets.all(2.0),
                  child: CircleAvatar(
                    radius: 32.0,
                    child: ClipRRect(
                        child: Image.asset("images/"+memberList[index].image+".jpg", height: 100, width: 100),
                      borderRadius: BorderRadius.circular(50.0)
                    ),
                  )
                ),
                new Padding(
                  padding: new EdgeInsets.only(left: 5.0, top: 5.0, right: 5.0, bottom: 5.0),
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: new Text(
                          memberList[index].name,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: new TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                ),
                new Padding(
                    padding: new EdgeInsets.only(left: 5.0, top: 0.0, right: 5.0, bottom: 5.0),
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.topCenter,
                        child: new Text(
                          memberList[index].designation,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: new TextStyle(fontSize: 10.0),
                        ),
                      )
                    ],
                  ),
                ),
                new Padding(
                  padding: new EdgeInsets.only(left: 5.0, top: 5.0, right: 5.0, bottom: 5.0),
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Visibility(
                            child: Text('বাণী,', style: TextStyle(color: Colors.black, fontSize: 12.0, fontWeight: FontWeight.bold)
                            ),
                          visible: false,
                        ),
                      )
                    ],
                ),
                ),
                new Padding(
                  padding: new EdgeInsets.only(left: 10.0, top: 0.0, right: 5.0, bottom: 5.0),
                  child: Visibility(
                    child: new Text(
                      memberList[index].quotes,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: new TextStyle(fontSize: 12.0,),
                    ),
                    visible: false,
                  ),
                ),
                Container(
                  decoration: new BoxDecoration(
                    color: new Color(0xFF29A74A),
                    borderRadius: BorderRadius.all(Radius.circular(10.0))
                  ),
                  child: new Padding(
                    padding: new EdgeInsets.all(5.0),
                    child: new Text(
                      "বিস্তারিত..",
                      style: new TextStyle(fontSize: 15.0,color: new Color(0xFFFFFFFF)),
                      maxLines: 1,
                    ),
                  ),
                ),
              ],
            ),
          ),

        )
      ),
    );
  }

  onSelected(BuildContext context, int item) {
    switch(item){
      case 0:
        Navigator.of(context).push(MaterialPageRoute(builder: (context)=> DashBoard()),);
    }
  }
}



