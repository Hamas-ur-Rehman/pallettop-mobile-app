// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

class Pallets extends StatefulWidget {
  const Pallets({Key? key}) : super(key: key);

  @override
  State<Pallets> createState() => _PalletsState();
}

class _PalletsState extends State<Pallets> {
  final TextEditingController _standardcontroller = TextEditingController();
  final TextEditingController _bGradecontroller = TextEditingController();
  final TextEditingController _aGradecontroller = TextEditingController();
  final TextEditingController _lightEurocontroller = TextEditingController();
  final TextEditingController _mEurocontroller = TextEditingController();
  final TextEditingController _pbcontroller = TextEditingController();
  final TextEditingController _mediumpbcontroller = TextEditingController();
  final TextEditingController _convertedcontroller = TextEditingController();
  final TextEditingController _lightstandardcontroller =
      TextEditingController();
  final TextEditingController _wingerscontroller = TextEditingController();
  final TextEditingController _leggercontroller = TextEditingController();
  final TextEditingController _cpcontroller = TextEditingController();
  final TextEditingController _48sqcontroller = TextEditingController();
  final TextEditingController _yankeecontroller = TextEditingController();
  final TextEditingController _kaloncontroller = TextEditingController();
  final TextEditingController _spricercontroller = TextEditingController();
  final TextEditingController _plasticpbcontroller = TextEditingController();
  final TextEditingController _collarscontroller = TextEditingController();
  final TextEditingController _boxescontroller = TextEditingController();
  final TextEditingController _chickencontroller = TextEditingController();
  bool standard = false;
  bool bGrade = false;
  bool aGrade = false;
  bool lightEuro = false;
  bool mEuro = false;
  bool pb = false;
  bool mediumpb = false;
  bool converted = false;
  bool lightstandard = false;
  bool wingers = false;
  bool legger = false;
  bool cp = false;
  bool f48sq = false;
  bool yankee = false;
  bool kalon = false;
  bool spricer = false;
  bool plasticpb = false;
  bool collars = false;
  bool boxes = false;
  bool chicken = false;

  List pallets = [
    "Standard",
    "B Grade Euro",
    "A Grade Euro",
    "Light Euro",
    "M Euro",
    "PB Pallets",
    "Medium PB",
    "Converted",
    "Light Standard",
    "Wingers",
    "Legger St",
    "CP",
    "48 Sq",
    "Yankee",
    "Kalon",
    "Spricer",
    "Plastic PB",
    "Collars",
    "Boxes",
    "Chicken Boxes",
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 10, top: 50.0, bottom: 5),
                child: Text("choose pallets",
                    style:
                        TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("check the boxes to select the pallets",
                    style: TextStyle(fontSize: 18)),
              ),
              Row(
                children: [
                  Checkbox(
                    checkColor: Colors.white,
                    value: standard,
                    onChanged: (bool? value) {
                      setState(() {
                        standard = value!;
                      });
                    },
                  ),
                  Text(pallets[0], style: const TextStyle(fontSize: 18)),
                  standard
                      ? SizedBox(
                          width: MediaQuery.of(context).size.width - 150,
                          child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFormField(
                                  keyboardType: TextInputType.number,
                                  controller: _standardcontroller,
                                  decoration: InputDecoration(
                                      labelText: "Quantity",
                                      fillColor: Colors.white,
                                      border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                        borderSide: const BorderSide(),
                                      )))))
                      //fillColor: Colors.green

                      : const SizedBox()
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    checkColor: Colors.white,
                    value: bGrade,
                    onChanged: (bool? value) {
                      setState(() {
                        bGrade = value!;
                      });
                    },
                  ),
                  Text(pallets[1], style: const TextStyle(fontSize: 18)),
                  bGrade
                      ? SizedBox(
                          width: MediaQuery.of(context).size.width - 170,
                          child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFormField(
                                  keyboardType: TextInputType.number,
                                  controller: _bGradecontroller,
                                  decoration: InputDecoration(
                                      labelText: "Quantity",
                                      fillColor: Colors.white,
                                      border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                        borderSide: const BorderSide(),
                                      )))))
                      //fillColor: Colors.green

                      : const SizedBox()
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    checkColor: Colors.white,
                    value: aGrade,
                    onChanged: (bool? value) {
                      setState(() {
                        aGrade = value!;
                      });
                    },
                  ),
                  Text(pallets[2], style: const TextStyle(fontSize: 18)),
                  aGrade
                      ? SizedBox(
                          width: MediaQuery.of(context).size.width - 170,
                          child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFormField(
                                  keyboardType: TextInputType.number,
                                  controller: _aGradecontroller,
                                  decoration: InputDecoration(
                                      labelText: "Quantity",
                                      fillColor: Colors.white,
                                      border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                        borderSide: const BorderSide(),
                                      )))))
                      //fillColor: Colors.green

                      : const SizedBox()
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    checkColor: Colors.white,
                    value: lightEuro,
                    onChanged: (bool? value) {
                      setState(() {
                        lightEuro = value!;
                      });
                    },
                  ),
                  Text(pallets[3], style: const TextStyle(fontSize: 18)),
                  lightEuro
                      ? SizedBox(
                          width: MediaQuery.of(context).size.width - 170,
                          child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFormField(
                                  keyboardType: TextInputType.number,
                                  controller: _lightEurocontroller,
                                  decoration: InputDecoration(
                                      labelText: "Quantity",
                                      fillColor: Colors.white,
                                      border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                        borderSide: const BorderSide(),
                                      )))))
                      //fillColor: Colors.green

                      : const SizedBox()
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    checkColor: Colors.white,
                    value: mEuro,
                    onChanged: (bool? value) {
                      setState(() {
                        mEuro = value!;
                      });
                    },
                  ),
                  Text(pallets[4], style: const TextStyle(fontSize: 18)),
                  mEuro
                      ? SizedBox(
                          width: MediaQuery.of(context).size.width - 170,
                          child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFormField(
                                  keyboardType: TextInputType.number,
                                  controller: _mEurocontroller,
                                  decoration: InputDecoration(
                                      labelText: "Quantity",
                                      fillColor: Colors.white,
                                      border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                        borderSide: const BorderSide(),
                                      )))))
                      //fillColor: Colors.green

                      : const SizedBox()
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    checkColor: Colors.white,
                    value: pb,
                    onChanged: (bool? value) {
                      setState(() {
                        pb = value!;
                      });
                    },
                  ),
                  Text(pallets[5], style: const TextStyle(fontSize: 18)),
                  pb
                      ? SizedBox(
                          width: MediaQuery.of(context).size.width - 170,
                          child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFormField(
                                  keyboardType: TextInputType.number,
                                  controller: _pbcontroller,
                                  decoration: InputDecoration(
                                      labelText: "Quantity",
                                      fillColor: Colors.white,
                                      border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                        borderSide: const BorderSide(),
                                      )))))
                      //fillColor: Colors.green

                      : const SizedBox()
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    checkColor: Colors.white,
                    value: mediumpb,
                    onChanged: (bool? value) {
                      setState(() {
                        mediumpb = value!;
                      });
                    },
                  ),
                  Text(pallets[6], style: const TextStyle(fontSize: 18)),
                  mediumpb
                      ? SizedBox(
                          width: MediaQuery.of(context).size.width - 170,
                          child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFormField(
                                  keyboardType: TextInputType.number,
                                  controller: _mediumpbcontroller,
                                  decoration: InputDecoration(
                                      labelText: "Quantity",
                                      fillColor: Colors.white,
                                      border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                        borderSide: const BorderSide(),
                                      )))))
                      //fillColor: Colors.green

                      : const SizedBox()
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    checkColor: Colors.white,
                    value: converted,
                    onChanged: (bool? value) {
                      setState(() {
                        converted = value!;
                      });
                    },
                  ),
                  Text(pallets[7], style: const TextStyle(fontSize: 18)),
                  converted
                      ? SizedBox(
                          width: MediaQuery.of(context).size.width - 170,
                          child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFormField(
                                  keyboardType: TextInputType.number,
                                  controller: _convertedcontroller,
                                  decoration: InputDecoration(
                                      labelText: "Quantity",
                                      fillColor: Colors.white,
                                      border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                        borderSide: const BorderSide(),
                                      )))))
                      //fillColor: Colors.green

                      : const SizedBox()
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    checkColor: Colors.white,
                    value: lightstandard,
                    onChanged: (bool? value) {
                      setState(() {
                        lightstandard = value!;
                      });
                    },
                  ),
                  Text(pallets[8], style: const TextStyle(fontSize: 18)),
                  lightstandard
                      ? SizedBox(
                          width: MediaQuery.of(context).size.width - 170,
                          child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFormField(
                                  keyboardType: TextInputType.number,
                                  controller: _lightstandardcontroller,
                                  decoration: InputDecoration(
                                      labelText: "Quantity",
                                      fillColor: Colors.white,
                                      border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                        borderSide: const BorderSide(),
                                      )))))
                      //fillColor: Colors.green

                      : const SizedBox()
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    checkColor: Colors.white,
                    value: wingers,
                    onChanged: (bool? value) {
                      setState(() {
                        wingers = value!;
                      });
                    },
                  ),
                  Text(pallets[9], style: const TextStyle(fontSize: 18)),
                  wingers
                      ? SizedBox(
                          width: MediaQuery.of(context).size.width - 170,
                          child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFormField(
                                  keyboardType: TextInputType.number,
                                  controller: _wingerscontroller,
                                  decoration: InputDecoration(
                                      labelText: "Quantity",
                                      fillColor: Colors.white,
                                      border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                        borderSide: const BorderSide(),
                                      )))))
                      //fillColor: Colors.green

                      : const SizedBox()
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    checkColor: Colors.white,
                    value: legger,
                    onChanged: (bool? value) {
                      setState(() {
                        legger = value!;
                      });
                    },
                  ),
                  Text(pallets[10], style: const TextStyle(fontSize: 18)),
                  legger
                      ? SizedBox(
                          width: MediaQuery.of(context).size.width - 170,
                          child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFormField(
                                  keyboardType: TextInputType.number,
                                  controller: _leggercontroller,
                                  decoration: InputDecoration(
                                      labelText: "Quantity",
                                      fillColor: Colors.white,
                                      border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                        borderSide: const BorderSide(),
                                      )))))
                      //fillColor: Colors.green

                      : const SizedBox()
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    checkColor: Colors.white,
                    value: cp,
                    onChanged: (bool? value) {
                      setState(() {
                        cp = value!;
                      });
                    },
                  ),
                  Text(pallets[11], style: const TextStyle(fontSize: 18)),
                  cp
                      ? SizedBox(
                          width: MediaQuery.of(context).size.width - 170,
                          child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFormField(
                                  keyboardType: TextInputType.number,
                                  controller: _cpcontroller,
                                  decoration: InputDecoration(
                                      labelText: "Quantity",
                                      fillColor: Colors.white,
                                      border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                        borderSide: const BorderSide(),
                                      )))))
                      //fillColor: Colors.green

                      : const SizedBox()
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    checkColor: Colors.white,
                    value: f48sq,
                    onChanged: (bool? value) {
                      setState(() {
                        f48sq = value!;
                      });
                    },
                  ),
                  Text(pallets[12], style: const TextStyle(fontSize: 18)),
                  f48sq
                      ? SizedBox(
                          width: MediaQuery.of(context).size.width - 170,
                          child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFormField(
                                  keyboardType: TextInputType.number,
                                  controller: _48sqcontroller,
                                  decoration: InputDecoration(
                                      labelText: "Quantity",
                                      fillColor: Colors.white,
                                      border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                        borderSide: const BorderSide(),
                                      )))))
                      //fillColor: Colors.green

                      : const SizedBox()
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    checkColor: Colors.white,
                    value: yankee,
                    onChanged: (bool? value) {
                      setState(() {
                        yankee = value!;
                      });
                    },
                  ),
                  Text(pallets[13], style: const TextStyle(fontSize: 18)),
                  yankee
                      ? SizedBox(
                          width: MediaQuery.of(context).size.width - 170,
                          child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFormField(
                                  keyboardType: TextInputType.number,
                                  controller: _yankeecontroller,
                                  decoration: InputDecoration(
                                      labelText: "Quantity",
                                      fillColor: Colors.white,
                                      border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                        borderSide: const BorderSide(),
                                      )))))
                      //fillColor: Colors.green

                      : const SizedBox()
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    checkColor: Colors.white,
                    value: kalon,
                    onChanged: (bool? value) {
                      setState(() {
                        kalon = value!;
                      });
                    },
                  ),
                  Text(pallets[14], style: const TextStyle(fontSize: 18)),
                  kalon
                      ? SizedBox(
                          width: MediaQuery.of(context).size.width - 170,
                          child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFormField(
                                  keyboardType: TextInputType.number,
                                  controller: _kaloncontroller,
                                  decoration: InputDecoration(
                                      labelText: "Quantity",
                                      fillColor: Colors.white,
                                      border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                        borderSide: const BorderSide(),
                                      )))))
                      //fillColor: Colors.green

                      : const SizedBox()
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    checkColor: Colors.white,
                    value: spricer,
                    onChanged: (bool? value) {
                      setState(() {
                        spricer = value!;
                      });
                    },
                  ),
                  Text(pallets[15], style: const TextStyle(fontSize: 18)),
                  spricer
                      ? SizedBox(
                          width: MediaQuery.of(context).size.width - 170,
                          child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFormField(
                                  keyboardType: TextInputType.number,
                                  controller: _spricercontroller,
                                  decoration: InputDecoration(
                                      labelText: "Quantity",
                                      fillColor: Colors.white,
                                      border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                        borderSide: const BorderSide(),
                                      )))))
                      //fillColor: Colors.green

                      : const SizedBox()
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    checkColor: Colors.white,
                    value: plasticpb,
                    onChanged: (bool? value) {
                      setState(() {
                        plasticpb = value!;
                      });
                    },
                  ),
                  Text(pallets[16], style: const TextStyle(fontSize: 18)),
                  plasticpb
                      ? SizedBox(
                          width: MediaQuery.of(context).size.width - 170,
                          child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFormField(
                                  keyboardType: TextInputType.number,
                                  controller: _plasticpbcontroller,
                                  decoration: InputDecoration(
                                      labelText: "Quantity",
                                      fillColor: Colors.white,
                                      border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                        borderSide: const BorderSide(),
                                      )))))
                      //fillColor: Colors.green

                      : const SizedBox()
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    checkColor: Colors.white,
                    value: collars,
                    onChanged: (bool? value) {
                      setState(() {
                        collars = value!;
                      });
                    },
                  ),
                  Text(pallets[17], style: const TextStyle(fontSize: 18)),
                  collars
                      ? SizedBox(
                          width: MediaQuery.of(context).size.width - 170,
                          child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFormField(
                                  keyboardType: TextInputType.number,
                                  controller: _collarscontroller,
                                  decoration: InputDecoration(
                                      labelText: "Quantity",
                                      fillColor: Colors.white,
                                      border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                        borderSide: const BorderSide(),
                                      )))))
                      //fillColor: Colors.green

                      : const SizedBox()
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    checkColor: Colors.white,
                    value: boxes,
                    onChanged: (bool? value) {
                      setState(() {
                        boxes = value!;
                      });
                    },
                  ),
                  Text(pallets[18], style: const TextStyle(fontSize: 18)),
                  boxes
                      ? SizedBox(
                          width: MediaQuery.of(context).size.width - 170,
                          child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFormField(
                                  keyboardType: TextInputType.number,
                                  controller: _boxescontroller,
                                  decoration: InputDecoration(
                                      labelText: "Quantity",
                                      fillColor: Colors.white,
                                      border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                        borderSide: const BorderSide(),
                                      )))))
                      //fillColor: Colors.green

                      : const SizedBox()
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    checkColor: Colors.white,
                    value: chicken,
                    onChanged: (bool? value) {
                      setState(() {
                        chicken = value!;
                      });
                    },
                  ),
                  Text(pallets[19], style: const TextStyle(fontSize: 18)),
                  chicken
                      ? SizedBox(
                          width: MediaQuery.of(context).size.width - 170,
                          child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFormField(
                                  keyboardType: TextInputType.number,
                                  controller: _chickencontroller,
                                  decoration: InputDecoration(
                                      labelText: "Quantity",
                                      fillColor: Colors.white,
                                      border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                        borderSide: const BorderSide(),
                                      )))))
                      //fillColor: Colors.green

                      : const SizedBox()
                ],
              ),
              const SizedBox(
                height: 22,
              ),
              //button
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: MaterialButton(
                        minWidth: MediaQuery.of(context).size.width - 100,
                        height: 50,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        color: const Color(0xff3054bf),
                        textColor: Colors.white,
                        elevation: 5,
                        onPressed: () {},
                        child: const Text(
                          "Submit",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
