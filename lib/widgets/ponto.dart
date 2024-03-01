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
    return Padding(padding: EdgeInsets.symmetric(horizontal: 30, vertical: 25),
    child:  Container(
      width: MediaQuery.of(context).size.width * 0.85,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Trabalhou nessa data:',
            style: TextStyle(
              color: Color(0xffFBFBFB),
              fontSize: 18,
            ),
          ),
          SizedBox(height: 15),
          Container(
            width: MediaQuery.of(context).size.width * 0.60,
            height: 50.0,
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xffFBFBFB), width: 1.0),
              borderRadius: BorderRadius.circular(5.0),
            ),
            child: DropdownButton<String>(
              dropdownColor: Color(0xFF212121),
              value: _selectedOption,
              hint: Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Text(
                  'Selecione uma opção',
                  style: TextStyle(color: Color(0xffFBFBFB)),
                ),
              ),
              onChanged: (String? newValue) {
                setState(() {
                  _selectedOption = newValue;
                });
              },
              items: _options.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Text(
                      value,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                );
              }).toList(),
              underline: Container(),
              icon: Padding(
                padding: EdgeInsets.only(right: 8.0),
                child: Icon(
                  Icons.arrow_drop_down,
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
      ),
    )
    );
  }
}
