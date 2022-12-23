// import 'dart:developer';

// import 'package:arcore_flutter_plugin/arcore_flutter_plugin.dart'
//     show ArCoreController;
// import 'package:flutter/material.dart';
// import 'package:xpand_reality/hello_world.dart';

// Future<void> main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   log('ARCORE IS AVAILABLE?');
//   log(await ArCoreController.checkArCoreAvailability());
//   log('\nAR SERVICES INSTALLED?');
//   log(await ArCoreController.checkIsArCoreInstalled());
//   runApp(const MyApp());
// }
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:xpand_reality/hello_world.dart';
import 'package:arcore_flutter_plugin/arcore_flutter_plugin.dart'
    show ArCoreController;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  log('ARCORE IS AVAILABLE?');
  log(await ArCoreController.checkArCoreAvailability());
  log('\nAR SERVICES INSTALLED?');
  log(await ArCoreController.checkIsArCoreInstalled());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Xpand Reality',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HelloWorld(),
    );
  }
}
