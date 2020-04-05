import 'package:flutter/material.dart';

import 'package:componentes/src/pages/alert_pages.dart';
import 'package:componentes/src/pages/animated_container_pages.dart';
import 'package:componentes/src/pages/avatar_page.dart';
import 'package:componentes/src/pages/card_pages.dart';
import 'package:componentes/src/pages/home_pages.dart';
import 'package:componentes/src/pages/input_page.dart';
import 'package:componentes/src/pages/listview_page.dart';
import 'package:componentes/src/pages/slider_page.dart';


Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    '/' : (BuildContext context) => HomePage(),
    AlertPage.pageName : (BuildContext context) => AlertPage(),
    'avatar' : (BuildContext context) => AvatarPage(),
    'card': (BuildContext context) => CardPage(),
    'animatedContainer': (BuildContext context) => AnimatedContainerPage(),
    'inputs' : (BuildContext context) => InputPage(),
    'slider': (BuildContext context) => SliderPage(),
    'list': (BuildContext context) => ListaPage(),
  };
}
