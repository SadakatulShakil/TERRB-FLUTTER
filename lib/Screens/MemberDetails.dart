import 'package:flutter/material.dart';
import 'package:flutter_project/Common/app_bar_with_back_button.dart';
import 'package:flutter_project/Model/member.dart';

class MemberDetails extends StatelessWidget {

  final Member member;

  MemberDetails(this.member);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWithBackButton.appBarWithBack(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Padding(
                padding: new EdgeInsets.all(5.0)
            ),
            new Padding(
              padding: new EdgeInsets.only(left: 5.0, top: 5.0, right: 5.0, bottom: 5.0),
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Image.asset("images/"+member.image+".jpg", height: 200,width: 200,)
                    )
                  ]
                )
            ),
            new Padding(padding: new EdgeInsets.only(left: 5.0, top: 5.0, right: 5.0, bottom: 0.0),
              child: Text(
                member.name,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: new TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
              ),
            ),
            new Padding(padding: new EdgeInsets.only(left: 5.0, top: 5.0, right: 5.0, bottom: 0.0),
              child: Text(
                member.designation,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: new TextStyle(fontSize: 14.0),
              ),
            ),
            new Padding(padding: new EdgeInsets.only(left: 8.0, top: 5.0, right: 5.0, bottom: 0.0),
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'বাণী,',
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: new TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            ),
            new Padding(padding: new EdgeInsets.only(left: 14.0, top: 5.0, right: 5.0, bottom: 5.0),
              child: Text(
                member.quotes,
                textAlign: TextAlign.left,
                style: new TextStyle(fontSize: 12.0),
              ),
            )
          ],
        ),
      ),
    );
  }
}
