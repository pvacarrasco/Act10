import 'package:flutter/material.dart';
import 'package:armenta0431/pantallas/tabla1.dart';
import 'package:armenta0431/pantallas/tabla2.dart';
import 'package:armenta0431/pantallas/tabla3.dart';
import 'package:armenta0431/pantallas/tabla4.dart';
import 'package:armenta0431/pantallas/tabla5.dart';
import 'package:armenta0431/pantallaini_0431.dart';

void main() => runApp(const MiApp0431());

class MiApp0431 extends StatelessWidget {
  const MiApp0431({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (context) => const PantallaIni_0431(),
        "/Tabla1": (context) => const Tabla1(),
        "/Tabla2": (context) => const Tabla2(),
        "/Tabla3": (context) => const Tabla3(),
        "/Tabla4": (context) => const Tabla4(),
        "/Tabla5": (context) => const Tabla5(),
      },
    ); // fin de material
  } // fin widget
}
