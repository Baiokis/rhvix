// ignore_for_file: type=lint
import 'package:flutter/material.dart';

class Ponto extends StatefulWidget {
  const Ponto({Key? key}) : super(key: key);

  @override
  State<Ponto> createState() => _PontoState();
}

class _PontoState extends State<Ponto> {
  String? _selectedOption;
  final List<String> _options = ['Sim', 'Folga', 'Atestado'];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                children: [
                  Text(
                    'Trabalhou nessa data:',
                    style: TextStyle(
                      color: Color(0xffFBFBFB),
                      fontSize: 20,
                    ),
                  ),
                  DropdownButton<String>(
                    value: _selectedOption,
                    hint: Text('Selecione uma opção'),
                    onChanged: (String? newValue) {
                      setState(() {
                        _selectedOption = newValue;
                      });
                    },
                    items: _options.map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
