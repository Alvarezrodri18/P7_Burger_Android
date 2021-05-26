import 'package:flutter/material.dart';

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
              SizedBox(height: 8,),
              _crearInput1(),
              SizedBox(height: 4,),
                _crearInput2(),
                   SizedBox(height: 4,),
                
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
      padding: EdgeInsets.all(10),
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
      padding: EdgeInsets.all(10),
      child: TextFormField(
        obscureText: true,
        decoration: InputDecoration(
          labelText: 'Password',
          hintText: 'Password'
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
              borderRadius: BorderRadius.only(topRight: Radius.circular(20), topLeft: Radius.circular(20), 
              bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
              child: FadeInImage(
                placeholder: AssetImage('assets/burger.gif'),
                image: NetworkImage("https://cdn.dribbble.com/users/41854/screenshots/1121005/burger-d.gif"),
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}// Second page
