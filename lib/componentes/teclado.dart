import 'botao.dart';
import 'linha_botoes.dart';
import 'package:flutter/material.dart';

class Teclado extends StatelessWidget {
  final void Function(String) callback;
  const Teclado(this.callback, {super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 79, 79, 79),
          border: Border.all(
            color: Colors.white, // Cor da borda
            width: 2.0, // Largura da borda
          ),
          borderRadius: BorderRadius.circular(8.0), // Border radius
        ),
      height: 450,
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          const SizedBox(height: 8),
          LinhaBotoes([
            Botao(texto: 'C', cor: Colors.black, callback: callback),
            Botao(texto: '^', cor: Colors.black, callback: callback),
            Botao(texto: '!', cor: Colors.black, callback: callback),
            Botao(texto: '/', cor: Colors.black, callback: callback),
          ]),
          const SizedBox(height: 8),
          LinhaBotoes([
            Botao(texto: '7', cor: Color.fromARGB(255, 229, 229, 229), corTexto: Colors.black, callback: callback),
            Botao(texto: '8', cor: Color.fromARGB(255, 229, 229, 229), corTexto: Colors.black, callback: callback),
            Botao(texto: '9', cor: Color.fromARGB(255, 229, 229, 229), corTexto: Colors.black, callback: callback),
            Botao(texto: '*', cor: Colors.black, callback: callback),
          ]),
          const SizedBox(height: 8),
          LinhaBotoes([
            Botao(texto: '4', cor: Color.fromARGB(255, 229, 229, 229), corTexto: Colors.black, callback: callback),
            Botao(texto: '5', cor: Color.fromARGB(255, 229, 229, 229), corTexto: Colors.black, callback: callback),
            Botao(texto: '6', cor: Color.fromARGB(255, 229, 229, 229), corTexto: Colors.black, callback: callback),
            Botao(texto: '-', cor: Colors.black, callback: callback),
          ]),
          const SizedBox(height: 8),
          LinhaBotoes([
            Botao(texto: '1', cor: Color.fromARGB(255, 229, 229, 229), corTexto: Colors.black, callback: callback),
            Botao(texto: '2', cor: Color.fromARGB(255, 229, 229, 229), corTexto: Colors.black, callback: callback),
            Botao(texto: '3', cor: Color.fromARGB(255, 229, 229, 229), corTexto: Colors.black, callback: callback),
            Botao(texto: '+', cor: Colors.black, callback: callback),
          ]),
          const SizedBox(height: 8),
          LinhaBotoes([
            Botao(texto: '0', cor: Color.fromARGB(255, 229, 229, 229), corTexto: Colors.black, callback: callback),
            Botao(texto: '00', cor: Color.fromARGB(255, 229, 229, 229), corTexto: Colors.black, callback: callback),
            Botao(texto: '.', cor: Color.fromARGB(255, 229, 229, 229), corTexto: Colors.black, callback: callback),
            Botao(texto: '=', cor: Colors.black, callback: callback),
          ]),
        ],
      ),
    );
  }
}