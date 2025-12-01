import 'package:flutter/material.dart';
import './botoes.dart';

void main() {
  runApp(const PerguntasApp());
}

class PerguntasApp extends StatelessWidget {
  const PerguntasApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Home());
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  final perguntas = [
    {
      'pergunta': 'Qual a sua cor favorita?',
      'respostas': ['Vermelho', 'Verde', 'Azul', 'Amarelo', 'Preto'],
    },
    {
      'pergunta': 'Qual o seu animal favorito?',
      'respostas': ['Cachorro', 'Gato', 'Coelho', 'Porco', 'Ornitorrinco'],
    },
    {
      'pergunta': 'Qual é o seu time?',
      'respostas': ['Flamengo', 'Palmeiras', 'São Paulo', 'Santos', 'Corinthians'],
    },
  ];

  var indicePergunta = 0;

  void responder() {
    setState(() {
      indicePergunta =
          (indicePergunta + 1) % perguntas.length; // troca automaticamente
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Breno Dario', style: TextStyle(fontSize: 30), selectionColor: Colors.white,),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 206, 24, 49),
        foregroundColor: Colors.white,
        toolbarHeight: 80,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Text(
              perguntas[indicePergunta]['pergunta'].toString(),
              style: const TextStyle(fontSize: 30),
            ),
           ...((perguntas[indicePergunta]['respostas'] as List<String>)
           .map((textBotao) => Botoes(resp: responder, txt: textBotao))
           .toList()),
          ],
        ),
      ),
    );
  }
}
