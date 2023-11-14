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
            Botao(texto: 'C', duplo: true, cor: Colors.green, callback: callback),
            Botao(texto: '%', callback: callback),
            Botao(texto: '/', callback: callback),
          ]),
          const SizedBox(height: 2),
          LinhaBotoes([
            Botao(texto: '7', callback: callback),
            Botao(texto: '8', callback: callback),
            Botao(texto: '9', callback: callback),
            Botao(texto: '*', callback: callback),
          ]),
          const SizedBox(height: 2),
          LinhaBotoes([
            Botao(texto: '4', callback: callback),
            Botao(texto: '5', callback: callback),
            Botao(texto: '6', callback: callback),
            Botao(texto: '-', callback: callback),
          ]),
          const SizedBox(height: 2),
          LinhaBotoes([
            Botao(texto: '1', callback: callback),
            Botao(texto: '2', callback: callback),
            Botao(texto: '3', callback: callback),
            Botao(texto: '+', callback: callback),
          ]),
          LinhaBotoes([
            Botao(texto: '0', duplo: true, callback: callback),
            Botao(texto: '.', callback: callback),
            Botao(texto: '=', callback: callback),
          ]),
        ],
      ),
    );
  }
}