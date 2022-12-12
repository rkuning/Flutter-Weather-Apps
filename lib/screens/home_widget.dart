// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wthrapp/blocs/geolocation/geolocation_bloc.dart';
import 'package:wthrapp/screens/curent_data_widget.dart';
import 'package:wthrapp/screens/daily_data_widget.dart';
import 'package:wthrapp/screens/hourly_data_widget.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      // backgroundColor: Color.fromRGBO(45, 3, 59, 100),
      body: Container(
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Container(
              height: size.height * 0.7,
              width: size.width,
              padding: EdgeInsets.only(top: 40),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40)),
                gradient: LinearGradient(
                    colors: [Color(0xff955cd1), Color(0xff3fa2fa)],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    stops: [0.2, 0.85]),
              ),
              child: CurrentDataWidget(),
            ),
            SizedBox(
              height: 20,
            ),
            HourlyDataWidget(),
            DailyDataWidget()
          ],
        ),
      ),
    );
  }
}
