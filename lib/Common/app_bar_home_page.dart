import 'package:flutter/material.dart';
import 'package:flutter_project/Screens/DashBoard.dart';
import 'package:flutter_project/Screens/HomeScreen.dart';
import 'package:flutter_project/language/Languages%20.dart';
import 'package:flutter_project/language/LocalConstant.dart';
import 'package:flutter_svg/flutter_svg.dart';

enum PopUpNavMenu {
  // ShareThisApp,
  //CustomerGuide,
  //PrivacyPolicy,
  SwitchToBangla,
  DashBoard,
  AboutUs,
  NoticeBoard,
  Contact,
  ImportantLink,
  Faq,
  RateThisApp

  //SocialMedia,
  // RateThisApp,
}

List<PopUpNavMenu> items = PopUpNavMenu.values;

void choiceAction(context, choice) async {
  if (PopUpNavMenu.AboutUs == choice) {
   /* Navigator.push(context, MaterialPageRoute(builder: (context) {
      return LoginPage();
    }));*/
    ///Do logic for AboutUs page
  } else if (PopUpNavMenu.SwitchToBangla == choice) {
    print('SwitchToBangla');

    if(Languages.of(context)!.switchLanguage == "English"){
      changeLanguage(context, 'en');
    }else{
      changeLanguage(context, 'bn');
    }

  }/*else if (PopUpNavMenu.ShareThisApp == choice) {
    await Share.share("www.google.com", subject: "App");
  }*/

  else if(PopUpNavMenu.NoticeBoard == choice){
   /* Navigator.push(context,
        MaterialPageRoute(builder: (context) => CustomerGuideLine()));*/
    ///Do logic for NoticeBoard page

  }else if(PopUpNavMenu.Contact == choice){
    ///Do logic for NoticeBoard page
  }else if(PopUpNavMenu.ImportantLink == choice){

    ///Do logic for NoticeBoard page
  }else if(PopUpNavMenu.Faq == choice){
    ///Do logic for NoticeBoard page
  }
  else if(PopUpNavMenu.DashBoard == choice){
    ///Do logic for DashBoard page

    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return DashBoard();
    }));
  }
}

class AppBarUserLogin extends AppBar {

  AppBarUserLogin(
      {required BuildContext context,
        Key? key,
        Widget? leading,
        Widget? title,
        bool? centerTitle,
        List<Widget>? actions})
      : super(
      key: key,
      leading: MaterialButton(
        onPressed: () {
          // Navigator.push(context, MaterialPageRoute(builder: (context)=> CommonMenu()));
        },
        /*child: Icon(
                Icons.home,
                color: Colors.white,
              ),*/
      ),
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
      actions: [
        PopupMenuButton<PopUpNavMenu>(
            color: Colors.white.withOpacity(0.9),
            elevation: 6.0,
            shape: ContinuousRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0))),
            offset: Offset(0, 40),
            onSelected: (item) {
              //TODO: go to the chosen page
              choiceAction(context, item);
            },
            icon: Icon(Icons.menu),
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                  child: menuItem(
                    //lanEn ? 'Switch to Bangla' : 'Switch to English',
                      Languages.of(context)!.switchLanguage, 'review.svg'),
                  value: PopUpNavMenu.SwitchToBangla,
                ),
                PopupMenuItem(
                  child: menuItem(Languages.of(context)!.menu_dashBoard, 'review.svg'),
                  value: PopUpNavMenu.DashBoard,
                ),
                PopupMenuItem(
                  child: menuItem(
                      Languages.of(context)!.menu_about, 'review.svg'),
                  value: PopUpNavMenu.AboutUs,
                ),
                PopupMenuItem(
                  child: menuItem(
                      Languages.of(context)!.menu_notice, 'review.svg'),
                  value: PopUpNavMenu.NoticeBoard,
                ),
                PopupMenuItem(
                  child: menuItem(
                      Languages.of(context)!.menu_contact, 'review.svg'),
                  value: PopUpNavMenu.Contact,
                ),
                /*PopupMenuItem(
                        child: menuItem(Languages.of(context)!.AdminLogIn, 'admin.svg'),
                        value: PopUpNavMenu.AdminLogIn,
                      ),*/
                PopupMenuItem(
                  child: menuItem(
                      Languages.of(context)!.menu_links, 'review.svg'),
                  value: PopUpNavMenu.ImportantLink,
                ),
                PopupMenuItem(
                  child: menuItem(
                      Languages.of(context)!.menu_faq, 'review.svg'),
                  value: PopUpNavMenu.Faq,
                ),
              ];
            })
      ]);

  showMenu(){

  }
}
Widget menuItem(String text, String assetName) {
  // TODO: Change the shape
  return Container(
    // decoration: BoxDecoration(
    //   boxShadow: [
    //     BoxShadow(
    //         color: Colors.grey, offset: Offset(2.0, 2.0))
    //   ],
    //   border:
    //   Border.symmetric(horizontal: BorderSide(color: Colors.grey),),
    //   shape: BoxShape.rectangle,
    // ),
      width: 500,
      child: Row(children: [
        SvgPicture.asset('icons/$assetName',height: 20, width: 20,),
        SizedBox(
          width: 24.08,
        ),
        Text(text),
      ]));
}



