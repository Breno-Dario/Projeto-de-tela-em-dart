import 'package:flutter/material.dart';
class Botoes extends StatelessWidget {
  
  const Botoes({required this.txt, required this.resp, Key? key}) : super(key: key);

  final void Function() resp;
  final String txt;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(5),
      child: ElevatedButton(
        onPressed: resp,
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 54, 58, 59),
          foregroundColor: Colors.white,
        ),
        child: Text(txt, style: TextStyle(fontSize: 20)),
      ),
    );
  }
}