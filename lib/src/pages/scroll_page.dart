import 'package:flutter/material.dart';

class ScrollPage extends StatelessWidget {
  
  final _fontStyle = TextStyle(fontSize: 50.0, color: Colors.white, fontWeight: FontWeight.w600);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            _pagina1(),
            _pagina2()
          ],
        ),
      );
  }

  Widget _pagina1() {
    return Stack(
      children: <Widget>[
        _colorFondo(),
        _imagenFondo(),
        _textoFondo()
      ],
    );
  }

  Widget _pagina2() {
    return Stack(
      children: <Widget>[
        _colorFondo(),
        _botonFondo(),
      ],
    );
  }

  Widget _colorFondo(){
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromRGBO(108, 192, 218, 1.0),
    );
  }

  Widget _imagenFondo() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Image(
        image: AssetImage('assets/scroll-1.png'),
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _textoFondo() {
    return Container(
      padding: EdgeInsets.all(50.0),
      width: double.infinity,
      height: double.infinity,
      child: Column(
        children: <Widget>[
          SizedBox(height: 20.0),
          Text('11º', style: _fontStyle, overflow: TextOverflow.ellipsis,),
          SizedBox(height: 20.0,),
          Text('Miércoles', style: _fontStyle, overflow: TextOverflow.ellipsis,),
          Expanded( child: Container()),
          Icon( Icons.keyboard_arrow_down, size: 70.0, color: Colors.white, )
        ],
      )
    );
  }

  Widget _botonFondo() {
    return Center(
      child: _boton(),
    );
  }

  Widget _boton(){
    return RaisedButton(
      textColor: Colors.white,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 10.0),
        child: Text('Bienvenido', style: TextStyle(fontSize: 20.0),),
      ),
      color: Colors.blueGrey,
      shape: StadiumBorder(),
      onPressed: (){},
    );
  }

}