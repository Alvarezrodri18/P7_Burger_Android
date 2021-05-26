import 'package:flutter/material.dart';
import 'package:alvarez/pages/third_pages.dart';

class SecondPage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Formulario'),
        flexibleSpace: Container ( 
              decoration: BoxDecoration ( 
                gradient: LinearGradient ( 
                  begin: Alignment.bottomRight,
                  end: Alignment.bottomLeft,
                  colors: [Colors.cyan, Colors.blue, Colors.indigo], 
                ), 
              ), 
            ), 
      ),//AppBar
      body: SingleChildScrollView(
        child: Form(
          child: Column(
            children: <Widget>[
              _crearCard1(),
              SizedBox(height: 20,),
              _crearInput1(),
              SizedBox(height: 20,),
                _crearInput2(),
                   SizedBox(height: 20,),
                _crearInput3(),
                FlatButton(
                  onPressed: () {},
                  color: Colors.indigo,
                  child: Text('Enviar', style: TextStyle(color: Colors.white),),
                )


            ],
          ),
        ),
      ),
    );
    
  }
  Widget _crearInput1() {
    return Container(
      padding: EdgeInsets.all(15),
      child: TextFormField(
        decoration: InputDecoration(
          labelText: 'Nombre Completo',
          hintText: 'Nombre'
        ),
      ),
    );
  }
   Widget _crearInput3() {
    return Container(
      padding: EdgeInsets.all(15),
      child: TextFormField(
        
        decoration: InputDecoration(
          labelText: 'Email',
          icon: Icon(Icons.email, color: Colors.indigo[400],),
          hintText: 'Email'
        ),
      ),
    );
  }
  Widget _crearInput2() {
    return Container(
      padding: EdgeInsets.all(15),
      child: TextFormField(
        obscureText: true,
        decoration: InputDecoration(
          labelText: 'Password',
          hintText: 'Password'
        ),
      ),
    );
  }
}// Second page
