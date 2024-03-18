// ignore_for_file: type=lint
import 'package:flutter/material.dart';
import '../widgets/top_bar.dart';

class Notify extends StatefulWidget {
  const Notify({super.key});

  @override
  State<Notify> createState() => _NotifyState();
}

class _NotifyState extends State<Notify> {
  final List<String> mensagens = [
    'O expediente está acabando',
    'Reunião em 15 minutos',
    'Não esqueça de marcar o ponto',
    'Relatório de horas pendente',
    'Atualize seus dados no sistema',
  ];

  // Mantém o registro das mensagens lidas
  final Set<int> _lidas = {};

  // Manipula o toque na mensagem
  void _handleTap(int index) {
    setState(() {
      _lidas.add(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff212121),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            HeaderRow(),
            SizedBox(height: 20),
            for (int i = 0; i < mensagens.length; i++)
              GestureDetector(
                onTap: () => _handleTap(i),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.85,
                  margin: EdgeInsets.only(bottom: 15),
                  padding: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    color: Color(0xff323232).withOpacity(0.2),
                    border: Border.all(
                      color: _lidas.contains(i) ? Color(0xffFBFBFB).withOpacity(0.2) : Color(0xffFBFBFB),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(7),
                  ),
                  child: Center(
                    child: Text(
                      mensagens[i],
                      style: TextStyle(
                        color: Color(0xffFBFBFB),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
