// ignore_for_file: type=lint
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widgets/ponto.dart';
import '../widgets/top_bar.dart';

class PontoScreen extends StatefulWidget {
  const PontoScreen({super.key});

  @override
  State<PontoScreen> createState() => _PontoScreenState();
}

class _PontoScreenState extends State<PontoScreen> {
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
                  Ponto(),
                ]))
    );
  }
}
