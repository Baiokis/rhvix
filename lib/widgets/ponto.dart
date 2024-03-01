// ignore_for_file: type=lint
import 'package:flutter/material.dart';
import 'package:rhvix/widgets/ponto_sim.dart';

class Ponto extends StatefulWidget {
  const Ponto({Key? key}) : super(key: key);

  @override
  State<Ponto> createState() => _PontoState();
}

class _PontoState extends State<Ponto> {
  String? _selectedOption;
  final List<String> _options = ['Sim', 'Folga', 'Atestado'];

  TextEditingController _messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 25),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.85,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Trabalhou nessa data:',
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
                    style: TextStyle(color: Color(0xffFBFBFB), fontSize: 10),
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
            ),
            SimWidget(),
            // Descrição
            SizedBox(height: 40),
            Text(
              'Descrição :',
              style: TextStyle(
                color: Color(0xffFBFBFB),
                fontSize: 15,
              ),
            ),
            SizedBox(height: 15),
            Container(
              height: 150.0, // Altura ajustável conforme necessário
              child: TextField(
                controller: _messageController,
                keyboardType: TextInputType.multiline,
                maxLines: null, // Permite múltiplas linhas
                decoration: InputDecoration(
                  hintText: 'Enviar mensagem',
                  hintStyle: TextStyle(color: Colors.white),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    borderSide:
                        BorderSide(color: Color(0xffFBFBFB), width: 1.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    borderSide:
                        BorderSide(color: Color(0xffFBFBFB), width: 1.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    borderSide:
                        BorderSide(color: Color(0xffFBFBFB), width: 1.0),
                  ),
                ),
                style: TextStyle(color: Colors.white),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.4,
                    child: ElevatedButton(
                      onPressed: () {
                        // Adicione sua lógica aqui
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Color(0xFF212121), // Cor do fundo
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          side: BorderSide(
                              color: Color(0xFFF14040),
                              width: 1.0), // Borda branca
                        ),
                      ),
                      child: Text('Cancelar'),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.4,
                    child: ElevatedButton(
                      onPressed: () {
                        // Adicione sua lógica aqui
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Color(0xFF212121), // Cor do fundo
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          side: BorderSide(
                              color: Color(0xFFFBFBFB),
                              width: 1.0), // Borda branca
                        ),
                      ),
                      child: Text('Cadastrar'),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
