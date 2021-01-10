import 'package:flutter/material.dart';

class MainModel{
  int seq;
  String title;
  String content;

  MainModel({@required this.seq, @required this.title, @required this.content})
      :assert(seq != null);

  //
}