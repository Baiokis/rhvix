// ignore_for_file: type=lint
import 'package:flutter/material.dart';

class FolgaWidget extends StatefulWidget {
  const FolgaWidget({super.key});

  @override
  State<FolgaWidget> createState() => _FolgaState();
}

class _FolgaState extends State<FolgaWidget> {
  String? _selectedOption;
  final List<String> _options = [
    'Vincius Caetano',
    'Marcos Monfardini',
    'Bruno Soares',
    'Wanderson Silva',
    'Thaiany Antunes',
    'Rhyner Santos'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Indique quem Autorizou a Folga : ',
              style: TextStyle(
                color: Color(0xffFBFBFB),
                fontSize: 15,
              ),
            ),
            SizedBox(height: 15),
            Container(
              height: 40.0,
              width: MediaQuery.of(context).size.width * 0.85,
              padding: EdgeInsets.symmetric(
                  horizontal: 8.0), // Adiciona padding horizontal
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xffFBFBFB), width: 1.0),
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  dropdownColor: Color(0xFF212121),
                  value: _selectedOption,
                  icon: Padding(
                    // Move o ícone para a esquerda
                    padding: EdgeInsets.only(left: 8.0),
                    child: Icon(Icons.arrow_drop_down, color: Colors.white),
                  ),
                  iconSize:
                      24, // Pode ajustar o tamanho do ícone conforme necessário
                  isExpanded:
                      true, // Expande o dropdown para preencher o container
                  hint: Text(
                    'Selecione uma opção',
                    style: TextStyle(color: Color(0xffFBFBFB), fontSize: 10),
                  ),
                  onChanged: (String? newValue) {
                    setState(() {
                      _selectedOption = newValue;
                    });
                  },
                  items: _options.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(
                        value,
                        style: TextStyle(color: Colors.white),
                      ),
                    );
                  }).toList(),
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16), // Ajusta o estilo do texto
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
