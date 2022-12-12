// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wthrapp/blocs/geolocation/geolocation_bloc.dart';

class CurrentDataWidget extends StatefulWidget {
  const CurrentDataWidget({super.key});

  @override
  State<CurrentDataWidget> createState() => _CurrentDataWidget();
}

class _CurrentDataWidget extends State<CurrentDataWidget> {
  // late GeolocationBloc geolocationBloc;

  // @override
  // void initState() {
  //   super.initState();
  //   geolocationBloc = BlocProvider.of<GeolocationBloc>(context);
  //   geolocationBloc.add(LoadGeolocation());
  // }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Text(
          'Constantine',
          style: TextStyle(
              color: Colors.white.withOpacity(0.9),
              fontSize: 35,
              fontFamily: 'Sans'),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          'Saturday 10 Dec 2022',
          style:
              TextStyle(color: Colors.white, fontSize: 15, fontFamily: 'Sans'),
        ),
        SizedBox(
          height: 10,
        ),
        Image.asset(
          'assets/icons/10d.png',
          width: size.width * 0.4,
          scale: 0.8,
        ),
        Text(
          "Cloudy",
          style: TextStyle(
              color: Colors.white,
              fontSize: 40,
              fontWeight: FontWeight.w500,
              fontFamily: 'Sans'),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          "10°",
          style: TextStyle(
              color: Colors.white,
              fontSize: 40,
              fontWeight: FontWeight.w800,
              fontFamily: 'Sans'),
        ),
        SizedBox(
          height: 15,
        ),
        Row(
          children: [
            Expanded(
                child: Column(
              children: [
                Image.asset(
                  "assets/icons/wind.png",
                  width: size.width * 0.15,
                  scale: 1.5,
                ),
                Text(
                  "17.2 km/h",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Sans'),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Wind",
                  style: TextStyle(
                      color: Colors.white.withOpacity(0.6),
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Sans'),
                ),
              ],
            )),
            Expanded(
                child: Column(
              children: [
                Image.asset(
                  "assets/icons/humidity.png",
                  width: size.width * 0.15,
                  scale: 1.3,
                ),
                Text(
                  "66",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Sans'),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Humidity",
                  style: TextStyle(
                      color: Colors.white.withOpacity(0.6),
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Sans'),
                ),
              ],
            )),
            Expanded(
                child: Column(
              children: [
                Image.asset(
                  "assets/icons/wind-direction.png",
                  width: size.width * 0.15,
                  scale: 2.5,
                ),
                Text(
                  "SE",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Sans'),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Wind Direction",
                  style: TextStyle(
                      color: Colors.white.withOpacity(0.6),
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Sans'),
                ),
              ],
            ))
          ],
        ),
      ],
    );
  }
}
