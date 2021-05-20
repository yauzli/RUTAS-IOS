import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  final String texto;
  TextEditingController _textController = TextEditingController();

  SecondPage({Key key, this.texto}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Pantalla 2"),
        backgroundColor: Colors.greenAccent[400],
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(24.0),
              child: TextField(
                controller: _textController,
                maxLength: 100,
                decoration: InputDecoration(
                  labelText: "Ingrese Frase",
                  hintText: "Palabra",
                ),
              ),
            ),
            MaterialButton(
              child: Text("Regresar"),
              onPressed: () {
                Navigator.of(context).pop(_textController.text);
              },
            ),
          ],
        ),
      ), //body center
    ); //scaffold
  } //widget
} //fin class second page
