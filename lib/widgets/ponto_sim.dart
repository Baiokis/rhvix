// ignore_for_file: type=lint
import 'package:flutter/material.dart';

class SimWidget extends StatefulWidget {
  const SimWidget({super.key});

  @override
  State<SimWidget> createState() => _SimWidgetState();
}

class _SimWidgetState extends State<SimWidget> {
  String? _selectedOption;
  final List<String> _options = ['Sim', 'Folga', 'Atestado'];

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Inicio : ',
                    style: TextStyle(
                      color: Color(0xffFBFBFB),
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(height: 15),
                  Container(
                    height: 40.0,
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
                          style:
                              TextStyle(color: Color(0xffFBFBFB), fontSize: 10),
                        ),
                      ),
                      onChanged: (String? newValue) {
                        setState(() {
                          _selectedOption = newValue;
                        });
                      },
                      items: _options
                          .map<DropdownMenuItem<String>>((String value) {
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
                  ),
                ],
              ),
            ),
            SizedBox(width: 20),
            Padding(
                padding: EdgeInsets.only(top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Fim : ',
                      style: TextStyle(
                        color: Color(0xffFBFBFB),
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(height: 15),
                    Container(
                      height: 40.0,
                      decoration: BoxDecoration(
                        border:
                            Border.all(color: Color(0xffFBFBFB), width: 1.0),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: DropdownButton<String>(
                        dropdownColor: Color(0xFF212121),
                        value: _selectedOption,
                        hint: Padding(
                          padding: EdgeInsets.only(left: 8.0),
                          child: Text(
                            'Selecione uma opção',
                            style: TextStyle(
                                color: Color(0xffFBFBFB), fontSize: 10),
                          ),
                        ),
                        onChanged: (String? newValue) {
                          setState(() {
                            _selectedOption = newValue;
                          });
                        },
                        items: _options
                            .map<DropdownMenuItem<String>>((String value) {
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
                    ),
                  ],
                ))
          ],
        ),
        // ROW de Centro de CUSTOS
        SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
                padding: EdgeInsets.only(top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Centro de Custo : ',
                      style: TextStyle(
                        color: Color(0xffFBFBFB),
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(height: 15),
                    Container(
                      height: 40.0,
                      decoration: BoxDecoration(
                        border:
                            Border.all(color: Color(0xffFBFBFB), width: 1.0),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: DropdownButton<String>(
                        dropdownColor: Color(0xFF212121),
                        value: _selectedOption,
                        hint: Padding(
                          padding: EdgeInsets.only(left: 8.0),
                          child: Text(
                            'Selecione uma opção',
                            style: TextStyle(
                                color: Color(0xffFBFBFB), fontSize: 10),
                          ),
                        ),
                        onChanged: (String? newValue) {
                          setState(() {
                            _selectedOption = newValue;
                          });
                        },
                        items: _options
                            .map<DropdownMenuItem<String>>((String value) {
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
                    ),
                  ],
                )),
            SizedBox(width: 20),
            Padding(
                padding: EdgeInsets.only(top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'N° da OS Autvix :',
                      style: TextStyle(
                        color: Color(0xffFBFBFB),
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(height: 15),
                    Container(
                      height: 40.0,
                      decoration: BoxDecoration(
                        border:
                            Border.all(color: Color(0xffFBFBFB), width: 1.0),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: DropdownButton<String>(
                        dropdownColor: Color(0xFF212121),
                        value: _selectedOption,
                        hint: Padding(
                          padding: EdgeInsets.only(left: 8.0),
                          child: Text(
                            'Selecione uma opção',
                            style: TextStyle(
                                color: Color(0xffFBFBFB), fontSize: 10),
                          ),
                        ),
                        onChanged: (String? newValue) {
                          setState(() {
                            _selectedOption = newValue;
                          });
                        },
                        items: _options
                            .map<DropdownMenuItem<String>>((String value) {
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
                    ),
                  ],
                ))
          ],
        ),
        // ROW de Tipos de Atendimentos
        SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
                padding: EdgeInsets.only(top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Tipo de atendimento : ',
                      style: TextStyle(
                        color: Color(0xffFBFBFB),
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(height: 15),
                    Container(
                      height: 40.0,
                      decoration: BoxDecoration(
                        border:
                            Border.all(color: Color(0xffFBFBFB), width: 1.0),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: DropdownButton<String>(
                        dropdownColor: Color(0xFF212121),
                        value: _selectedOption,
                        hint: Padding(
                          padding: EdgeInsets.only(left: 8.0),
                          child: Text(
                            'Selecione uma opção',
                            style: TextStyle(
                                color: Color(0xffFBFBFB), fontSize: 10),
                          ),
                        ),
                        onChanged: (String? newValue) {
                          setState(() {
                            _selectedOption = newValue;
                          });
                        },
                        items: _options
                            .map<DropdownMenuItem<String>>((String value) {
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
                    ),
                  ],
                )),
            SizedBox(width: 20),
            Padding(
                padding: EdgeInsets.only(top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Tipo de atividade :',
                      style: TextStyle(
                        color: Color(0xffFBFBFB),
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(height: 15),
                    Container(
                      height: 40.0,
                      decoration: BoxDecoration(
                        border:
                            Border.all(color: Color(0xffFBFBFB), width: 1.0),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: DropdownButton<String>(
                        dropdownColor: Color(0xFF212121),
                        value: _selectedOption,
                        hint: Padding(
                          padding: EdgeInsets.only(left: 8.0),
                          child: Text(
                            'Selecione uma opção',
                            style: TextStyle(
                                color: Color(0xffFBFBFB), fontSize: 10),
                          ),
                        ),
                        onChanged: (String? newValue) {
                          setState(() {
                            _selectedOption = newValue;
                          });
                        },
                        items: _options
                            .map<DropdownMenuItem<String>>((String value) {
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
                    ),
                  ],
                ))
          ],
        ),
      ],
    ));
  }
}
