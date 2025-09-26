import 'package:flutter/material.dart';

void main() {
  runApp(const Contador()); //roda a aplicação
}

class Contador extends StatefulWidget {
  const Contador({super.key});

  @override
  State<Contador> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Contador> {
  //codar em dart aqui
  int _numero = 0;
  void aumentar(){
    setState(() {//FUNÇÃO QUE ATUALIZA E AUMENTA O VALOR DE VARIAVEL
      _numero++;
    });
  }
  void diminuir(){
    setState(() {//FUNÇÃO QUE ATUALIZA E DIMINUI O VALOR
      if (_numero >0){
        _numero--;
      }else{
        _numero == 0;
      }
    });
  }
  void resetar(){
    setState(() {//FUNÇÃO QUE RESETA A VARIAVEL E VOLTA PARA ZERO
      _numero=0;
    });
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp( //quem fornece os componentes vao ser chamados
      home: Scaffold(//divide a tela entre appbar e body
        appBar: AppBar(title: Text("Contador da Kamila",
        style: TextStyle(fontSize: 40,
        color: Color.fromARGB(255, 218, 241, 248)),),
        backgroundColor: const Color.fromARGB(255, 9, 45, 75),
        centerTitle: true
        ),
        
        body: Column(//elementos umm abaixo do outro
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20), // raio de 20 para cantos arredondados
            child: Image.network(
              "https://yt3.googleusercontent.com/J5GpIaL943TROBssxkyqlLYcz0iVxJBoMPfBE8JvtxfcXhaWq7WohAu4Ej4Ejt549ZymVucQRw=s900-c-k-c0x00ffffff-no-rj",
              width: 130,
              height: 130,
              fit: BoxFit.cover,
            ),
          ),
          Text("${_numero.toInt()}",
          style: TextStyle(fontSize: 190)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(90),
                backgroundColor: const Color.fromARGB(255, 9, 45, 75),
                foregroundColor: const Color.fromARGB(255, 218, 241, 248),
              ), onPressed: aumentar, child: Icon(Icons.add, size: 48)), //(){} VOCÊ COLOCA ISSO QUANDO ELE FOR RECEBER MAIS DE UMA FUNÇÃO
              
              
              SizedBox(width: 20, height: 20),

              ElevatedButton(style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(90),
                backgroundColor: const Color.fromARGB(255, 9, 45, 75),
                foregroundColor: const Color.fromARGB(255, 218, 241, 248),
              ), onPressed: diminuir, child: Icon(Icons.remove, size: 48)),


              SizedBox(width: 20, height: 20),


              ElevatedButton(style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(90),
                backgroundColor: const Color.fromARGB(255, 9, 45, 75),
                foregroundColor: const Color.fromARGB(255, 218, 241, 248),
              ), onPressed: resetar, child: Icon(Icons.restore, size: 48)),
             
            ],
          )//a row é quem coloca os elementos um do lado do outro em formato de linha
        ],)//o children é vários filhos então é uma LISTA de elementos
      )
    );
  }
}

