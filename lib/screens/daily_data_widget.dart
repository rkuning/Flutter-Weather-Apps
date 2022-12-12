import 'package:flutter/material.dart';

class DailyDataWidget extends StatelessWidget {
  const DailyDataWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const Text(
        "Next Days",
        style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
            fontFamily: 'Sans'),
      ),
      const SizedBox(
        height: 10,
      ),
      Container(
        height: 325,
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(10),
        decoration: const BoxDecoration(
          color: Color(0xff3fa2fa),
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 300,
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Container(
                        height: 60,
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Sun",
                              style: TextStyle(
                                fontSize: 15,
                                fontFamily: 'Sans',
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              height: 60,
                              width: 60,
                              child: Image.asset(
                                "assets/icons/10d.png",
                              ),
                            ),
                            const Text(
                              "20 / 19",
                              style: TextStyle(
                                fontSize: 15,
                                fontFamily: 'Sans',
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  );
                },
              ),
            )
          ],
        ),
      )
    ]);
  }
}
