import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'State_Management_with_provider/controller/increment_provider.dart';
import 'myapp/myapp.dart';

void main() {
  //TODO initolize provider in main if you want to use it just uncomment this lines
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => AddIncrement()),
    ],
    child: const MyApp(),
  ));
  // runApp(MyApp());
}
