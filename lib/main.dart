// import 'package:flutter/material.dart';
// import 'package:payonet/screens/splashscreen/splashscreen.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//
//       home:Splashscreen(),
//     );
//   }
// }
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:payonet/screens/splashscreen/splashscreen.dart';
import 'package:payonet/utils/colornotifir.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => ColorNotifier(),
        ),
      ],
      child: MaterialApp(
        theme: ThemeData(
            appBarTheme: const AppBarTheme(
              backgroundColor: Colors.blueAccent,
            )
        ),
        home:const Splashscreen(),

        debugShowCheckedModeBanner: false,
      ),
    ),
  );
}