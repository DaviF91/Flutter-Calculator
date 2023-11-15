import 'botao.dart';
import 'linha_botoes.dart';
import 'package:flutter/material.dart';

class Teclado extends StatelessWidget {
  final void Function(String) callback;
  const Teclado(this.callback, {super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: Column(
        children: <Widget>[
          const SizedBox(height: 2),
          LinhaBotoes([
            Botao(texto: 'C', cor: Colors.black, callback: callback),
            Botao(texto: '^', cor: Colors.black, callback: callback),
            Botao(texto: '!', cor: Colors.black, callback: callback),
            Botao(texto: '/', cor: Colors.black, callback: callback),
          ]),
          const SizedBox(height: 2),
          LinhaBotoes([
            Botao(texto: '7', cor: Color.fromARGB(255, 187, 187, 187), corTexto: Colors.black, callback: callback),
            Botao(texto: '8', cor: Color.fromARGB(255, 187, 187, 187), corTexto: Colors.black, callback: callback),
            Botao(texto: '9', cor: Color.fromARGB(255, 187, 187, 187), corTexto: Colors.black, callback: callback),
            Botao(texto: '*', cor: Colors.black, callback: callback),
          ]),
          const SizedBox(height: 2),
          LinhaBotoes([
            Botao(texto: '4', cor: Color.fromARGB(255, 187, 187, 187), corTexto: Colors.black, callback: callback),
            Botao(texto: '5', cor: Color.fromARGB(255, 187, 187, 187), corTexto: Colors.black, callback: callback),
            Botao(texto: '6', cor: Color.fromARGB(255, 187, 187, 187), corTexto: Colors.black, callback: callback),
            Botao(texto: '-', cor: Colors.black, callback: callback),
          ]),
          const SizedBox(height: 2),
          LinhaBotoes([
            Botao(texto: '1', cor: Color.fromARGB(255, 187, 187, 187), corTexto: Colors.black, callback: callback),
            Botao(texto: '2', cor: Color.fromARGB(255, 187, 187, 187), corTexto: Colors.black, callback: callback),
            Botao(texto: '3', cor: Color.fromARGB(255, 187, 187, 187), corTexto: Colors.black, callback: callback),
            Botao(texto: '+', cor: Colors.black, callback: callback),
          ]),
          LinhaBotoes([
            Botao(texto: '0', cor: Color.fromARGB(255, 187, 187, 187), corTexto: Colors.black, callback: callback),
            Botao(texto: '00', cor: Color.fromARGB(255, 187, 187, 187), corTexto: Colors.black, callback: callback),
            Botao(texto: '.', cor: Color.fromARGB(255, 187, 187, 187), corTexto: Colors.black, callback: callback),
            Botao(texto: '=', cor: Colors.black, callback: callback),
          ]),
        ],
      ),
    );
  }
}