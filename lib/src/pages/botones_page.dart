import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class BotonesPage extends StatelessWidget {
  const BotonesPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
        children: <Widget>[
          _colorFondo(),
          _cuerpoApp()
        ],
      ),
      bottomNavigationBar: _nav(context),
    );
  }


  Widget _colorFondo(){

    final color = Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          //begin: Alignment.topCenter,
          //end: Alignment.bottomCenter,
          begin: FractionalOffset(0.0, 0.6),
          end: FractionalOffset(0.0, 1.0),
          colors: [
            Color.fromRGBO(52, 54, 101, 1.0),
            Color.fromRGBO(35, 37, 57, 1.0),
          ]
        )
      ),
    );

    final figura = Positioned(
      top: -100.0,
      child: Transform.rotate(
        angle: -pi / 5.0,
        child: Container(
          height: 360.0,
          width: 360.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(80.0),
            gradient: LinearGradient(
              colors: [
                Color.fromRGBO(236, 98, 188, 1.0),
                Color.fromRGBO(241, 142, 172, 1.0),
              ]
            )
          ),
        ),
      ),
    );

    return Stack(
      children: <Widget>[
        color,
        figura
      ],
    );
  }

  Widget _cuerpoApp() {

    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          _titulos(),
          _botones(),
        ],
      ),
    );

  }

  Widget _titulos() {

    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Classify transaction', style: TextStyle( color: Colors.white, fontSize: 25.0, fontWeight: FontWeight.w800), overflow: TextOverflow.ellipsis),
            SizedBox(height: 5.0,),
            Text('Classify this transaction into a particular category', style: TextStyle( color: Colors.white, fontSize: 16.0), overflow: TextOverflow.ellipsis,)
          ],
        ),
      ),
    );

  }

  Widget _nav( BuildContext context) {
    return Theme(
        data: Theme.of(context).copyWith(
          //canvasColor: Color.fromRGBO(55, 57, 84, 1),
          //accentColor: Colors.pinkAccent,
          //textTheme: Theme.of(context).textTheme.copyWith(
          //  caption: TextStyle( color: Color.fromRGBO(116, 117, 152, 1.0) 
          //  )
          //)
        ),
        child: BottomNavigationBar(
        backgroundColor: Color.fromRGBO(55, 57, 84, 1),
        selectedItemColor: Colors.pinkAccent,
        unselectedItemColor: Color.fromRGBO(116, 117, 152, 1.0),
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            title: Container()
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.multiline_chart),
            title: Container()
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.supervised_user_circle),
            title: Container()
          ),
        ],
      ),
    );
  }

  Widget _botones() {

    return Container(
      padding: EdgeInsets.all(20.0),
      child: Table(
        children: [
          TableRow(
            children: [
              _boton( Icons.dashboard, 'General', Colors.blue),
              _boton( Icons.flash_auto, 'Transport', Colors.deepPurple),
            ]
          ),
          TableRow(
            children: [
              _boton( Icons.shopping_basket, 'Shopping', Colors.pink),
              _boton( Icons.watch, 'Bills', Colors.orange),
            ]
          ),
          TableRow(
            children: [
              _boton( Icons.video_library, 'Entretainment', Colors.blueGrey),
              _boton( Icons.flip_to_back, 'Grocery', Colors.green),
            ]
          ),
          TableRow(
            children: [
              _boton( Icons.supervised_user_circle, 'Account', Colors.cyan),
              _boton( Icons.pan_tool, 'Tools', Colors.indigo),
            ]
          )
        ],
      ),
    );

  }

  Widget _boton(IconData icono, String texto, Color color) {
    
    return ClipRect(
          child: BackdropFilter(
          filter: ImageFilter.blur( sigmaX: 10.0, sigmaY: 10.0 ),
          child: Container(
          height: 160.0,
          margin: EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            color: Color.fromRGBO(55, 57, 84, 0.8)
          ),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                SizedBox(height: 5.0,),
                CircleAvatar(
                  radius: 30.0,
                  backgroundColor: color,
                  child: Icon(icono, size: 30.0, color: Colors.white,)
                  ),
                Text(texto, style: TextStyle( color: color, fontSize: 16.0, fontWeight: FontWeight.bold),),
                SizedBox(height: 5.0,),
              ],
            ),
          ),
      ),
    );

  }



}