import 'package:flutter/material.dart';

// import 'package:componentes/src/pages/card_pages.dart';
import 'package:componentes/src/routes/routes.dart';
// import 'package:componentes/src/pages/avatar_page.dart';
// import 'package:componentes/src/pages/home_pages.dart';
// import 'package:componentes/src/pages/home_temp.dart';

void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      // home: HomePage(),
      initialRoute: '/',
      routes: getApplicationRoutes(),
      // onGenerateRoute: (RouteSettings settings) {
      //   print('Ruta llamada: ${settings.name}');

      //   return MaterialPageRoute(
      //     builder: (BuildContext context) => CardPage()
      //   );
      // },
    );
  }
}