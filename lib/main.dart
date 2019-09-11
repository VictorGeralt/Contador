import 'package:flutter/material.dart';

//metodo principal
 void main(){
  runApp(new MaterialApp(
    title: 'Contador de Pessoas', //titulo
    home: new Home()));

 }
 
 class Home extends StatefulWidget{
   @override
   _HomeState createState() => _HomeState();
 }

class  _HomeState extends State<Home>{

  int _contador = 0;
  String _info = "Pode entrar";

    void _incrementar(){
      setState(() {
        _contador++;
        if(_contador >= 10)
        _info = "Não pode Entrar";
      });
    }

    void _decrementar(){
      setState(() {
        _contador--;
        if(_contador <= 10)
        _info = "Pode Entrar";
      });
    }
    @override
    Widget build(BuildContext context) {
      return Stack(
      //empilhamento
        children: <Widget>[
          Image.asset(
            'imagens/fundo001.jpg',
            fit: BoxFit.cover
          ),
          Column(
            //alinhamento
            mainAxisAlignment:MainAxisAlignment.center,
            //array de filhos, item das colunas
            children: <Widget>[
              //itens da coluna
              Text('Visitantes: $_contador',
              //visual
              style: TextStyle(
                //elementos de texto
                fontSize:40,
                  color: Colors.white,
                fontWeight: FontWeight.bold)),
              //widget de linha
              Row(
                //alinhamento principal
                mainAxisAlignment: MainAxisAlignment.center,
                //array de itens de linha
                children: <Widget>[
                  //elemento que permite definir espaçamentos internos
                  Padding(
                    //tamanho dentro do elemento
                    padding: EdgeInsets.all(10),
                    //itens dentro do elemento
                    child: FlatButton(
                      child: Text("Entrar",
                          style: 
                              TextStyle(fontSize: 40, color: Colors.white)),
                      onPressed: () {_incrementar(); },),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: FlatButton(
                      child: Text("Sair",
                          style: 
                              TextStyle(fontSize: 40, color: Colors.white)),
                      onPressed: () {_decrementar();}),
                   ) ],
              ),
                 Text(_info,
                  style: TextStyle(
                      color: Colors.white,
                      fontStyle: FontStyle.italic,
                      fontSize: 30))
            ])
          ],
        );
    }
}