import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {

  final estiloTitulo = TextStyle( fontSize: 16.0, fontWeight: FontWeight.bold);
  final estiloSubTitulo = TextStyle( fontSize: 15.0, color: Colors.grey);
  final estiloDetalle = TextStyle( fontSize: 14.0);

  final estiloTxtButom = TextStyle( fontSize: 15.0, color: Colors.blue);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              _headerImg(),
              _titleSection(),
              _butomsSection(),
              _detailSection(),
              _detailSection(),
              _detailSection(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _headerImg() {

    return Container(
      width: double.infinity,
      child: FadeInImage(
        image: NetworkImage('https://images.pexels.com/photos/814499/pexels-photo-814499.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
        placeholder: NetworkImage('https://media.istockphoto.com/vectors/camera-icon-vector-id841184244'),
        height: 250.0,
        fit: BoxFit.cover,
      ),
    );

  }

  Widget _titleSection() {

    final _title = Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text("Lago Quiquierequehaga Tiki", style: estiloTitulo,),
          SizedBox(height: 8.0,),
          Text("Este es un lago muy bonito que esta al sur de alemania", style: estiloSubTitulo,)
        ],
      ),
    );

    final _star = Container(
      child: Row(
        children: <Widget>[
          Icon(Icons.star, color: Colors.red, size: 20.0,),
          Text("41", style: TextStyle(fontSize: 15.0),)
        ],
      ),
    );

    return SafeArea(
      child: Container(
        padding: EdgeInsets.only(left: 30.0, right: 30.0),
        width: double.infinity,
        child: Row(
          children: <Widget>[
            _title,
            _star
          ],
        ),
      ),
    );

  }

  Widget _butomsSection() {

    Widget _item( IconData icono, String texto){
      return Column(
        children: <Widget>[
          Icon(icono, color: Colors.blue, size: 25.0,),
          SizedBox(height: 8.0,),
          Text(texto, style: estiloTxtButom,)
        ],
      );
    }

    return SafeArea(
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            _item(Icons.call, 'CALL'),
            _item(Icons.near_me, 'ROUTE'),
            _item(Icons.share, 'SHARE')
          ],
        ),
      ),
    );

  }

  Widget _detailSection() {

    return SafeArea(
      child: Container(
        padding: EdgeInsets.only(left: 30.0, right: 30.0),
        child: Text('Veniam nulla cupidatat dolore exercitation id enim. Dolor nulla ullamco proident exercitation proident voluptate cillum excepteur duis adipisicing pariatur commodo laborum cupidatat. Velit voluptate commodo non et pariatur pariatur id dolor. Esse amet laborum aliquip consequat quis. Occaecat dolor commodo veniam in labore irure cupidatat consequat mollit eu et qui. Ullamco id dolor quis laboris excepteur do ea qui culpa fugiat commodo elit consectetur deserunt.',
        textAlign: TextAlign.justify,
        style: estiloDetalle,
        overflow: TextOverflow.visible,),
      ),
    );

  }

}