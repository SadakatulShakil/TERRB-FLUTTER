import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

abstract class Languages {

  static Languages? of(BuildContext context) {
    return Localizations.of<Languages>(context, Languages);
  }
  String get switchLanguage;
  String get next_main_activity;
  String get review;
  String get menu_notice;
  String get menu_dashBoard;
  String get menu_links;
  String get menu_about;
  String get menu_contact;
  String get menu_faq;
  String get language_toggle;
  String get index_code_hint;
  String get search;
  String get index_search_title_text;
  String get otp_subtitle_text;
  String get otp_code_hint;
  String get login;
  String get did_not_get_otp;
  String get resend_otp;
  String get institute_type_title;
  String get school;
  String get college;
  String get karigori;
  String get school_college;
  String get madrasha;
  String get text_applied_before;
  String get yes;
  String get no;
  String get visit;
  String get technical_help;
  String get contact;
  String get address;
  String get map_url;
  String get history;
  String get mission;
  String get employee;
  String get citizen;
  String get committee;
}
