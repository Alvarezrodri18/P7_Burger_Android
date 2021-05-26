import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Carrito'),
        
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Center(
          child: Column(
            children: <Widget>[
              _crearCard1(),
              _crearCard2()
            ],
          ),
        ),
      ),
    );
  }

  Widget _crearCard2() {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Container(
        decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Colors.blue,
                Colors.indigo[800],
              ],
            )
            ),
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            Text(
              'BURGER FOOD',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Nuestra Burger Sencilla lleva una carne de res a la parrilla, preparada con tomates, lechuga recién cortada, mayonesa, pepinillos y cebollas en rodajas, sobre un pan suave con ajonjolí. ¡Pídela en COMBO con papas a la francesa y refresco frío!',
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
      ),
    );
  }

  Widget _crearCard1() {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Container(
        child: Column(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.only(topRight: Radius.circular(20), topLeft: Radius.circular(20)),
              child: FadeInImage(
                placeholder: AssetImage('assets/burger.gif'),
                image: NetworkImage("https://cdn.dribbble.com/users/41854/screenshots/1121005/burger-d.gif"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Burger Sencilla'),
            )
          ],
        ),
      ),
    );
  }
}//ThirdPage
