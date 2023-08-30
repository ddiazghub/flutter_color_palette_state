import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../utils/color_utils.dart';
import 'pages/color_selection_page.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  // vamos a convertir este widget a uno con estado
  // el estado va a ser el color que se aplica en el tema
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String color = 'FFFFFF';

  void setColor(String value) => setState(() => color = value);

  @override
  Widget build(BuildContext context) {
    // vamos a usar GetMaterialApp para pdoer usar un diálogo sin context
    return GetMaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: ColorUtils.CreateMaterialColor(color),
        ),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: ColorSelectionPage(callback: setColor), // vamos a pasarle updatePrimarySwatchColor como función
    );
  }
}
