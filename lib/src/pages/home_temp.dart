import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  // const HomePageTemp({Key key}) : super(key: key);

  final List<String> opciones = ['Uno', 'Dos', 'Tres', 'Cuatro', 'Cinco', 'Seis', 'Siete', 'Ocho','Nueve', 'Diez', 
    'Once', 'Doce', 'Trece', 'Catorce', 'Quince', 'Dieciseis', 'Diecisiete', 'Dieciocho', 'Diecinueve', 'Veinte', ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes Temp'),
      ),
      body: ListView(
        // 
        children: _crearItemsCorta()
      ),
    );
  }

  List<Widget> _crearItems(){
    List<Widget> lista = new List<Widget>();

    for (var opt in opciones) {
      final ListTile tempWidget = ListTile(
        title: Text(opt),
      );
      lista..add(tempWidget)..add(Divider());
      // lista.add(Divider());
    }
    return lista;
  }

  List<Widget> _crearItemsCorta(){
    // var widgets;
    return opciones.map((item){
      return Column(
        children: <Widget>[
          ListTile(
            title: Text(item + '!'),
            subtitle: Text('Cualquier Cosa'),
            leading: Icon(Icons.account_balance_wallet),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: (){},
          ),
          Divider(),
        ],
      );
    }).toList();

    // return widgets;
  }


}