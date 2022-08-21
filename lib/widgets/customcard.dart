// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  String imgpath;
  String title;
  String body;
  CustomCard({
    required this.imgpath,
    required this.title,
    required this.body,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              imgpath,
              height: 140,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 8, 5),
                child: Text(
                  title,
                  style: const TextStyle(
                      fontFamily: 'lato',
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 8, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 3.2,
                      child: Text(body),
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class CustomCard2 extends StatelessWidget {
  String imgpath;
  String title;
  String body;
  CustomCard2({
    required this.imgpath,
    required this.title,
    required this.body,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 1, 8, 2),
      child: Card(
        elevation: 3,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 8, 8, 8),
              child: Image.asset(
                imgpath,
                height: 170,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                  child: Text(
                    title,
                    style: const TextStyle(
                        fontFamily: 'lato',
                        fontSize: 22,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width - 48,
                        child: Text(
                          body,
                          style: const TextStyle(fontSize: 18),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
