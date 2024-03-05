import 'dart:math';

import 'package:flutter/material.dart';

//essa clase representa o widget responsavel
//por gerir todo meu app
class Aplicacao extends StatelessWidget {
  const Aplicacao({super.key});

//método onde devemos indeicar o que nosso widget
//irá apresentar: como será sua coposição?
//o que ele mostra ao usuario?
  @override
  Widget build(BuildContext context) {
    //a classe MaterialApp é uma classe que segue
    //as regras do material (material.io) e sabe
    //gerenciar um app como um todo
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

//essa classe representa o widget onde vamos montar a
//nossa tela
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: SizedBox(
        width: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 200,
                  height: 200,
                  child: Container(
                    //através do BoxDecoration, podemos
                    //customizar o aspecto visual de um
                    //Container
                    decoration: BoxDecoration(color: geraCorAleatorio()),
                  ),
                ),
                SizedBox(
                  width: 200,
                  height: 200,
                  child: Container(
                    //através do BoxDecoration, podemos
                    //customizar o aspecto visual de um
                    //Container
                    decoration: BoxDecoration(color: geraCorAleatorio()),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 200,
                  height: 200,
                  child: Container(
                    //através do BoxDecoration, podemos
                    //customizar o aspecto visual de um
                    //Container
                    decoration: BoxDecoration(color: geraCorAleatorio()),
                  ),
                ),
                SizedBox(
                  width: 200,
                  height: 200,
                  child: Container(
                    //através do BoxDecoration, podemos
                    //customizar o aspecto visual de um
                    //Container
                    decoration: BoxDecoration(color: geraCorAleatorio()),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 200,
                  height: 200,
                  child: Container(
                    //através do BoxDecoration, podemos
                    //customizar o aspecto visual de um
                    //Container
                    decoration: BoxDecoration(color: geraCorAleatorio()),
                  ),
                ),
                SizedBox(
                  width: 200,
                  height: 200,
                  child: Container(
                    //através do BoxDecoration, podemos
                    //customizar o aspecto visual de um
                    //Container
                    decoration: BoxDecoration(color: geraCorAleatorio()),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Color geraCorAleatorio() {
  final random = Random();

  return Color.fromARGB(
    255,
    random.nextInt(256),
    random.nextInt(256),
    random.nextInt(256),
  );
}

//todo projeto, em dart,começa a execução
//pelo método mais
void main() => runApp(const Aplicacao());
