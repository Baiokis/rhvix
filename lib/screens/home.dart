// ignore_for_file: type=lint
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rhvix/controllers/global_variables.dart';
import 'package:rhvix/screens/ponto.dart';

import '../widgets/top_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
            Container(
                width: MediaQuery.of(context).size.width * 0.85,
                height: 50,
                padding: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(0xffFBFBFB),
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(7),
                ),
                child: Center(
                  child: Text(
                    'Você possui $nao_preenchidos dias não preenchidos',
                    style: TextStyle(
                      color: Color(0xffFBFBFB),
                    ),
                  ),
                )),
            SizedBox(height: 35),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(man),
                SizedBox(width: 20),
                SvgPicture.asset(woman),
              ],
            ),
            SizedBox(height: 40),
            SizedBox(
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        Color(0xffFBFBFB),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7),
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => PontoScreen()),
                    );
                  },
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                    child: SvgPicture.asset(
                      points,
                      color: Color(0xff212121),
                      height: MediaQuery.of(context).size.height * 0.072,
                    ),
                  )),
            ),
            SizedBox(height: 40),
            Container(
              width: MediaQuery.of(context).size.width * 0.85,
              decoration: BoxDecoration(
                border: Border.all(
                  color:
                      Color(0xffFBFBFB),
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(
                    7),
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: DataTable(
                  columnSpacing:
                      38.0,
                  columns: const <DataColumn>[
                    DataColumn(
                      label: Text(
                        'Data',
                        style: TextStyle(
                            fontStyle: FontStyle.italic, color: Colors.white),
                      ),
                    ),
                    DataColumn(
                      label: Text(
                        'HI',
                        style: TextStyle(
                            fontStyle: FontStyle.italic, color: Colors.white),
                      ),
                    ),
                    DataColumn(
                      label: Text(
                        'HF',
                        style: TextStyle(
                            fontStyle: FontStyle.italic, color: Colors.white),
                      ),
                    ),
                    DataColumn(
                      label: Text(
                        'CC',
                        style: TextStyle(
                            fontStyle: FontStyle.italic, color: Colors.white),
                      ),
                    ),
                  ],
                  rows: data.map<DataRow>((Map<String, dynamic> info) {
                    return DataRow(
                      cells: <DataCell>[
                        DataCell(Text(info['Data'],
                            style: const TextStyle(color: Colors.white))),
                        DataCell(Text(info['HI'],
                            style: const TextStyle(color: Colors.white))),
                        DataCell(Text(info['HF'],
                            style: const TextStyle(color: Colors.white))),
                        DataCell(Text(info['CC'],
                            style: const TextStyle(color: Colors.white))),
                      ],
                    );
                  }).toList(),
                ),
              ),
            ),
            SizedBox(height: 30)
          ],
        ),
      ),
    );
  }
}
