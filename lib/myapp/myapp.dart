import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../State_Management_with_provider/example_with_provider.dart';

// class MyApp extends StatelessWidget {
//   int a = 0;
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         theme: ThemeData(
//           primarySwatch: Colors.blue,
//         ),
//         home: Scaffold(
//           body: BlocProvider(
//               create: (BuildContext context) => CounterBloc(a),
//               child: const IncrementalButtonWithBloc()),
//         ));
//   }
// }
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const IncrementalButtonWithProvider());
  }
}
