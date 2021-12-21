import 'package:flutter/material.dart';
import 'package:flutter_project/Common/app_bar_with_back_button.dart';

class ImportantLink extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => InitState();
}

class InitState extends State<ImportantLink> {
  List<Color> colorG = [Colors.green, Colors.red, Colors.green];
  @override
  Widget build(BuildContext context) {
    return initWidget();
  }

  Widget initWidget() {

    return Scaffold(
      appBar: AppBarWithBackButton.appBarWithBack(),

      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0),
            child: Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.green.shade100,
                  borderRadius: BorderRadius.circular(10.0)
                ),
                  child:  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0, top: 18.0, bottom: 18.0),
                        child: Container(
                            child: Text("মাধ্যমিক স্কুল ও উচ্চ শিক্ষা অধিদপ্তর")
                        ),
                      ),
                      SizedBox(width: 5),
                      Container(
                          width: 80,
                          decoration: new BoxDecoration(
                              gradient: LinearGradient(
                                colors:  colorG,
                              ),

                              borderRadius: BorderRadius.all(Radius.circular(10.0))
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Text(
                              "দেখুন",
                              textAlign: TextAlign.center,
                            ),
                          )
                      ),
                    ],
                  )
              ),
            ),
          ),
        ],
      ),
    );
  }
}
