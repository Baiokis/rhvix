// ignore_for_file: type=lint
import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

class Atestado extends StatefulWidget {
  const Atestado({super.key});

  @override
  State<Atestado> createState() => _AtestadoState();
}

class _AtestadoState extends State<Atestado> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Padding(
      padding: EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Arquivo : ',
            style: TextStyle(
              color: Color(0xffFBFBFB),
              fontSize: 15,
            ),
          ),
          SizedBox(height: 15),
          SizedBox(
            child: ElevatedButton(
              onPressed: () async {
                final result = await FilePicker.platform.pickFiles();
                if (result == null) return;

                final file = result.files.first;

                final newFile = await saveFile(file);

                print('From Path: ${file.path!}');
                print('To Path: ${newFile.path}');
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Color(0xFF212121), // Cor do fundo
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                  side: BorderSide(
                      color: Color(0xFFFBFBFB), width: 1.0), // Borda branca
                ),
              ),
              child: Text('Importar Arquivo',
                  style: TextStyle(color: Color(0xffFBFBFB), fontSize: 11)),
            ),
          ),
        ],
      ),
    ));
  }

  Future<File> saveFile(PlatformFile file) async {
    final appStorage = await getApplicationDocumentsDirectory();
    final newFile = File('${appStorage.path}/${file.name}');

    return File(file.path!).copy(newFile.path);
  }
}
