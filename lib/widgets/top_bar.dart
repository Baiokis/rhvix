// ignore_for_file: type=lint
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../controllers/global_variables.dart';

class HeaderRow extends StatelessWidget {
  const HeaderRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 50, left: 30, right: 30, bottom: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(
                logo,
                color: Color(0xffFBFBFB),
                width: MediaQuery.of(context).size.width * 0.3,
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              SvgPicture.asset(
                notification,
                width: MediaQuery.of(context).size.width * 0.3,
                height: MediaQuery.of(context).size.height * 0.03,
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 30, top: 10),
          child: Row(
            children: [
              Text('Ola ',
                  style: TextStyle(fontSize: 14, color: Color(0xffFBFBFB))),
              Text(user + ',',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Color(0xffFBFBFB))),
            ],
          ),
        )
      ],
    );
  }
}
