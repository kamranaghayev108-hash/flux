import 'package:flutter/material.dart';
import 'package:flux/address.dart';
import 'package:flux/card.dart';
import 'package:flux/chat_support.dart';
import 'package:flux/cost.dart';
import 'package:flux/feedback.dart';
import 'package:flux/home_page.dart';
import 'package:flux/page.dart';
import 'package:flux/rate.dart';
import 'package:flux/show_dialog.dart';
import 'package:flux/voucher.dart';
import 'package:flux/whishlist.dart';
import 'package:flux/whishlist2.dart';


import 'home_screen.dart';

import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Cost(),
    );
  }
}
