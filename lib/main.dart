import 'package:flutter/material.dart';
import 'package:alvarez/pages/first_pages.dart';
import 'package:alvarez/pages/second_pages.dart';
import 'package:alvarez/pages/third_pages.dart';

void main() => runApp(AlvarezApp());

class AlvarezApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Burger Alvarez',
      debugShowCheckedModeBanner: false,
      home: PaginaInicio(),
    );
  }
} // Fin clase alvarezapp

class PaginaInicio extends StatefulWidget {
  @override
  _PaginaInicioState createState() => _PaginaInicioState();
} //Fin clase con PAgina inicio con estado

class _PaginaInicioState extends State<PaginaInicio> {
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size; //declara variable size
    Widget child; //widget creado por el usuario
    switch (_index) {
      case 0:
        child = FlutterLogo();
        break;
      case 1:
        child = MaterialApp(debugShowCheckedModeBanner: false, home: new SecondPage());
        break;
      case 2:
        child = MaterialApp(debugShowCheckedModeBanner: false, home: new ThirdPage());
        break;
    } //Fin de switch selecciona paginas

    return Scaffold(
      body: SizedBox.expand(child: child),
      bottomNavigationBar: BottomNavigationBar(onTap: (newIndex) => setState(() => _index = newIndex), currentIndex: _index, items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.blueAccent, size: 30.0), //icon
            title: Text('Inicio')), //
        BottomNavigationBarItem(
            icon: Icon(Icons.format_align_center, color: Colors.purpleAccent, size: 30.0), //icon
            title: Text('Registrarse')), //
        BottomNavigationBarItem(
            icon: Icon(Icons.fastfood, color: Colors.orangeAccent, size: 30.0), //icon
            title: Text('Pedidos')), //
      ]), // bottom
    ); //Fin de scaffold
  } //Fin widget build
} //Fin de clase _PaginaInicioState
