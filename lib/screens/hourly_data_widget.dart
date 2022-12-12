import 'package:flutter/material.dart';

class HourlyDataWidget extends StatelessWidget {
  const HourlyDataWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final List<int> numbers = [1, 2, 3, 5, 8, 13, 21, 34, 55];

    return Column(
      children: [
        const Text(
          "Today",
          style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
              fontFamily: 'Sans'),
        ),
        Container(
          margin: const EdgeInsets.all(10),
          height: size.height * 0.2,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: numbers.length,
              itemBuilder: (context, index) {
                // codingan
                return Container(
                  width: size.width * 0.23,
                  child: Container(
                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                    margin:
                        const EdgeInsets.only(right: 10, top: 10, bottom: 10),
                    decoration: const BoxDecoration(
                      color: Color(0xff3fa2fa),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black54,
                          blurRadius: 5,
                          offset: Offset(0, 1),
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "09:00",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                              fontFamily: 'Sans'),
                        ),
                        Image.asset(
                          "assets/icons/10n.png",
                          width: size.width * 0.15,
                        ),
                        Text(
                          "${numbers[index].toString()}°",
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Sans'),
                        ),
                      ],
                    ),
                  ),
                );
              }),
        ),
      ],
    );
  }
}
